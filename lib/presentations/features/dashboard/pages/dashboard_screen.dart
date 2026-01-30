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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setInitialCamera();
    });
  }

  void _setInitialCamera() {
    final screen = MediaQuery.of(context).size;
    final floor = widget.location.floors[floorIndex];
    final map = floor.logicalSize;

    final scaleX = screen.width / map.width;
    final scaleY = screen.height / map.height;
    final scale = max(scaleX, scaleY);

    _controller.value = Matrix4.identity()
      ..scale(scale)
      ..translate(
        (screen.width / scale - map.width) / -2,
        (screen.height / scale - map.height) / -2,
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
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _setInitialCamera();
              });
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
        panEnabled: true,
        scaleEnabled: true,
        child: GestureDetector(
          onTapDown: (d) {
            final pos = _controller.toScene(d.localPosition);
            _handleTap(context, pos, floor);
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

  const logicalWidth = 240.0;
  const logicalHeight = 180.0;

  int index = 1;

  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 13; x++) {
      elements.add(
        RectBox(
          'B$index',
          UnitStatus.values[rand.nextInt(3)],
          rect: Rect.fromLTWH(10 + x * 17, 10 + y * 14, 14, 12),
        ),
      );
      index++;
    }
  }

  for (int i = 0; i < 20; i++) {
    final bx = rand.nextDouble() * (logicalWidth - 30);
    final by = rand.nextDouble() * (logicalHeight - 30);

    elements.add(
      PolygonBox(
        'P$index',
        UnitStatus.values[rand.nextInt(3)],
        points: [
          Offset(bx, by),
          Offset(bx + 22, by + rand.nextDouble() * 8),
          Offset(bx + 18, by + 20),
          Offset(bx + rand.nextDouble() * 10, by + 16),
        ],
      ),
    );
    index++;
  }

  return FloorLayout(
    name: name,
    logicalSize: const Size(logicalWidth, logicalHeight),
    elements: elements,
  );
}
