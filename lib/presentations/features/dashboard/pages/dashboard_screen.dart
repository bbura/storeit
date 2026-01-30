import 'dart:math';

import 'package:flutter/material.dart';

/// =======================================================
/// MODELS
/// =======================================================

enum UnitStatus { available, reserved, occupied }

extension UnitStatusX on UnitStatus {
  Color get color {
    switch (this) {
      case UnitStatus.available:
        return Colors.green.shade400;
      case UnitStatus.reserved:
        return Colors.orange.shade400;
      case UnitStatus.occupied:
        return Colors.red.shade400;
    }
  }

  String get label {
    switch (this) {
      case UnitStatus.available:
        return 'Disponibil';
      case UnitStatus.reserved:
        return 'Rezervat';
      case UnitStatus.occupied:
        return 'Ocupat';
    }
  }
}

sealed class LayoutElement {
  const LayoutElement(this.label, this.status);

  final String label;
  final UnitStatus status;

  Path buildPath();
}

class RectBox extends LayoutElement {
  RectBox(super.label, super.status, {required this.rect});

  final Rect rect;

  @override
  Path buildPath() => Path()..addRect(rect);
}

class PolygonBox extends LayoutElement {
  PolygonBox(super.label, super.status, {required this.points});

  final List<Offset> points;

  @override
  Path buildPath() {
    final p = Path()..moveTo(points.first.dx, points.first.dy);
    for (final pt in points.skip(1)) {
      p.lineTo(pt.dx, pt.dy);
    }
    p.close();
    return p;
  }
}

class FloorLayout {
  const FloorLayout({
    required this.name,
    required this.logicalSize,
    required this.elements,
  });

  final String name;
  final Size logicalSize;
  final List<LayoutElement> elements;
}

class StorageLocation {
  const StorageLocation({required this.name, required this.floors});

  final String name;
  final List<FloorLayout> floors;
}

class BusinessOwner {
  const BusinessOwner({required this.name, required this.locations});

  final String name;
  final List<StorageLocation> locations;
}

/// =======================================================
/// DASHBOARD
/// =======================================================

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final owners = mockOwners();

    return Scaffold(
      appBar: AppBar(title: const Text('Self Storage Demo')),
      body: ListView.builder(
        itemCount: owners.length,
        itemBuilder: (_, i) {
          final owner = owners[i];
          return ListTile(
            title: Text(owner.name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LocationPage(owner: owner)),
              );
            },
          );
        },
      ),
    );
  }
}

/// =======================================================
/// LOCATION PAGE
/// =======================================================

class LocationPage extends StatelessWidget {
  const LocationPage({super.key, required this.owner});

  final BusinessOwner owner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(owner.name)),
      body: ListView(
        children: owner.locations.map((loc) {
          return ListTile(
            title: Text(loc.name),
            trailing: const Icon(Icons.map),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StorageMapPage(location: loc),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

/// =======================================================
/// STORAGE MAP (GOOGLE MAPS BEHAVIOR)
/// =======================================================

class StorageMapPage extends StatefulWidget {
  const StorageMapPage({super.key, required this.location});

  final StorageLocation location;

  @override
  State<StorageMapPage> createState() => _StorageMapPageState();
}

class _StorageMapPageState extends State<StorageMapPage> {
  int floorIndex = 0;
  final TransformationController _controller = TransformationController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _setInitialCamera());
  }

  void _setInitialCamera() {
    final screen = MediaQuery.of(context).size;
    final floor = widget.location.floors[floorIndex];
    final map = floor.logicalSize;

    // Zoom to fully cover screen width
    final scale = screen.width / map.width;

    _controller.value = Matrix4.identity()
      ..scale(scale)
      ..translate(
        0.0, // left aligned
        (screen.height / scale - map.height) / 2,
        0.0, // 👈 REQUIRED
      );
  }

  @override
  Widget build(BuildContext context) {
    final floor = widget.location.floors[floorIndex];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        title: Text(widget.location.name),
        actions: [
          DropdownButton<int>(
            value: floorIndex,
            underline: const SizedBox(),
            onChanged: (v) {
              setState(() => floorIndex = v!);
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => _setInitialCamera());
            },
            items: List.generate(
              widget.location.floors.length,
                  (i) => DropdownMenuItem(
                value: i,
                child: Text(widget.location.floors[i].name),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: _setInitialCamera,
          ),
        ],
      ),
      body: InteractiveViewer(
        transformationController: _controller,
        constrained: false,
        boundaryMargin: const EdgeInsets.all(double.infinity),
        minScale: 0.3,
        maxScale: 6,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTapDown: (details) {
            final box = context.findRenderObject() as RenderBox;
            final local = box.globalToLocal(details.globalPosition);
            final scene = _controller.toScene(local);
            _handleTap(context, scene, floor);
          },
          child: CustomPaint(
            size: floor.logicalSize,
            painter: FloorPainter(floor),
          ),
        ),
      ),
    );
  }

  void _handleTap(BuildContext context, Offset pos, FloorLayout floor) {
    for (final e in floor.elements.reversed) {
      if (e.buildPath().contains(pos)) {
        _showDetails(context, e);
        return;
      }
    }
  }

  void _showDetails(BuildContext context, LayoutElement e) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boxa ${e.label}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text('Status: ${e.status.label}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: e.status == UnitStatus.available ? () {} : null,
              child: const Text('Rezervă'),
            ),
          ],
        ),
      ),
    );
  }
}

/// =======================================================
/// PAINTER
/// =======================================================

class FloorPainter extends CustomPainter {
  FloorPainter(this.floor);

  final FloorLayout floor;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = Colors.grey.shade200);

    for (final e in floor.elements) {
      final fill = Paint()..color = e.status.color;
      final border = Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.black26;

      final path = e.buildPath();
      canvas.drawPath(path, fill);
      canvas.drawPath(path, border);
    }
  }

  @override
  bool shouldRepaint(_) => false;
}

/// =======================================================
/// MOCK DATA
/// =======================================================

List<BusinessOwner> mockOwners() {
  return [
    BusinessOwner(
      name: 'Storage Pro SRL',
      locations: [
        StorageLocation(
          name: 'Depozit Industrial Vest',
          floors: [
            generateFloor('Parter', seed: 10),
            generateFloor('Etaj 1', seed: 11),
            generateFloor('Etaj 2', seed: 12),
          ],
        ),
        StorageLocation(
          name: 'Hala Logistică Nord',
          floors: [generateFloor('Parter', seed: 20)],
        ),
      ],
    ),

    BusinessOwner(
      name: 'Urban Mini Storage',
      locations: [
        StorageLocation(
          name: 'Clădire Centrală',
          floors: [
            generateFloor('Subsol', seed: 30),
            generateFloor('Parter', seed: 31),
          ],
        ),
        StorageLocation(
          name: 'Turn Business Plaza',
          floors: [
            generateFloor('Etaj 3', seed: 32),
            generateFloor('Etaj 4', seed: 33),
            generateFloor('Etaj 5', seed: 34),
          ],
        ),
      ],
    ),

    BusinessOwner(
      name: 'SafeBox Solutions',
      locations: [
        StorageLocation(
          name: 'Centru Rezidențial',
          floors: [generateFloor('Parter', seed: 40)],
        ),
      ],
    ),

    BusinessOwner(
      name: 'Boxify Storage',
      locations: [
        StorageLocation(
          name: 'Depozit Express',
          floors: [
            generateFloor('Parter', seed: 50),
            generateFloor('Mezanin', seed: 51),
          ],
        ),
        StorageLocation(
          name: 'Unitate Aeroport',
          floors: [generateFloor('Nivel Unic', seed: 52)],
        ),
      ],
    ),

    BusinessOwner(
      name: 'VaultSpace Europe',
      locations: [
        StorageLocation(
          name: 'Hub Logistic Metropolitan',
          floors: [
            generateFloor('Zona A', seed: 60),
            generateFloor('Zona B', seed: 61),
            generateFloor('Zona C', seed: 62),
          ],
        ),
      ],
    ),
  ];
}

FloorLayout generateFloor(String name, {required int seed}) {
  final rand = Random(seed);
  final elements = <LayoutElement>[];

  const logicalSize = Size(240, 180);
  const padding = 8.0;

  int index = 1;

  // =======================================================
  // COLLISION UTILITIES
  // =======================================================

  bool overlaps(Path a, Path b) =>
      Path.combine(PathOperation.intersect, a, b)
          .computeMetrics()
          .isNotEmpty;

  bool fits(LayoutElement candidate) {
    final path = candidate.buildPath();
    return elements.every((e) => !overlaps(path, e.buildPath()));
  }

  bool tryAdd(
      LayoutElement Function() builder, {
        int attempts = 80, // 👈 more retries
      }) {
    for (int i = 0; i < attempts; i++) {
      final candidate = builder();
      if (fits(candidate)) {
        elements.add(candidate);
        return true;
      }
    }
    return false;
  }

  // =======================================================
  // ZONES
  // =======================================================

  final centerZone = Rect.fromLTWH(
    logicalSize.width / 2 - 28,
    padding,
    56,
    logicalSize.height - padding * 2,
  );

  final leftZone = Rect.fromLTWH(
    padding,
    padding,
    centerZone.left - padding * 2,
    logicalSize.height - padding * 2,
  );

  final rightZone = Rect.fromLTWH(
    centerZone.right + padding,
    padding,
    logicalSize.width - centerZone.right - padding * 2,
    logicalSize.height - padding * 2,
  );

  final bottomZone = Rect.fromLTWH(
    padding,
    logicalSize.height - 32,
    logicalSize.width - padding * 2,
    24,
  );

  final fullZone = Rect.fromLTWH(
    padding,
    padding,
    logicalSize.width - padding * 2,
    logicalSize.height - padding * 2,
  );

  // =======================================================
  // 1️⃣ POLYGONS (CENTER – MORE)
  // =======================================================

  for (int i = 0; i < 10; i++) {
    tryAdd(() {
      final cx = centerZone.left + rand.nextDouble() * centerZone.width;
      final cy = centerZone.top + rand.nextDouble() * centerZone.height;
      final size = 10 + rand.nextInt(14);

      return PolygonBox(
        'P$index',
        UnitStatus.values[rand.nextInt(3)],
        points: [
          Offset(cx, cy),
          Offset(cx + size, cy + rand.nextDouble() * size),
          Offset(cx + size * 0.6, cy + size),
          Offset(cx - rand.nextDouble() * size * 0.4, cy + size * 0.6),
        ],
      );
    });

    index++;
  }

  // =======================================================
  // 2️⃣ RECTANGLES & SQUARES (SIDES – MANY MORE)
  // =======================================================

  for (int i = 0; i < 48; i++) {
    final zone = rand.nextBool() ? leftZone : rightZone;

    tryAdd(() {
      final isSquare = rand.nextBool();
      final w = isSquare ? 10 + rand.nextInt(10) : 14 + rand.nextInt(20);
      final h = isSquare ? w : 10 + rand.nextInt(16);

      final x = zone.left + rand.nextDouble() * (zone.width - w);
      final y = zone.top + rand.nextDouble() * (zone.height - h);

      return RectBox(
        'B$index',
        UnitStatus.values[rand.nextInt(3)],
        rect: Rect.fromLTWH(x, y, w.toDouble(), h.toDouble()),
      );
    });

    index++;
  }

  // =======================================================
  // 3️⃣ LARGE UNITS (BOTTOM – MORE)
  // =======================================================

  for (int i = 0; i < 8; i++) {
    tryAdd(() {
      final w = 28 + rand.nextInt(26);

      return RectBox(
        'L$index',
        UnitStatus.values[rand.nextInt(3)],
        rect: Rect.fromLTWH(
          bottomZone.left +
              rand.nextDouble() * (bottomZone.width - w),
          bottomZone.top,
          w.toDouble(),
          bottomZone.height,
        ),
      );
    });

    index++;
  }

  // =======================================================
  // 4️⃣ EXTRA FILL PASS (SMALL UNITS ANYWHERE)
  // =======================================================

  for (int i = 0; i < 30; i++) {
    tryAdd(() {
      final isSquare = rand.nextInt(3) == 0;
      final w = isSquare ? 8 + rand.nextInt(6) : 10 + rand.nextInt(10);
      final h = isSquare ? w : 8 + rand.nextInt(10);

      final x = fullZone.left + rand.nextDouble() * (fullZone.width - w);
      final y = fullZone.top + rand.nextDouble() * (fullZone.height - h);

      return RectBox(
        'S$index',
        UnitStatus.values[rand.nextInt(3)],
        rect: Rect.fromLTWH(x, y, w.toDouble(), h.toDouble()),
      );
    });

    index++;
  }

  return FloorLayout(
    name: name,
    logicalSize: logicalSize,
    elements: elements,
  );
}
