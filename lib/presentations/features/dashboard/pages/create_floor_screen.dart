import 'dart:math';

import 'package:flutter/material.dart';

// =======================
// Models
// =======================

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
    required this.boundary,
  });

  final String name;
  final Size logicalSize;
  final List<LayoutElement> elements;
  final Path boundary;
}

// =======================
// Owner Input Models
// =======================

enum UnitSize { small, medium, large }

class OwnerFloorRow {
  OwnerFloorRow({
    required this.name,
    required this.unitSize,
    required this.count,
    this.orientationHorizontal = true,
  });

  final String name;
  final UnitSize unitSize;
  final int count;
  final bool orientationHorizontal;
}

class OwnerFloorData {
  OwnerFloorData({
    required this.floorName,
    required this.width,
    required this.height,
    required this.rows,
    this.specialPolygons = const [],
  });

  final String floorName;
  final double width;
  final double height;
  final List<OwnerFloorRow> rows;
  final List<PolygonBox> specialPolygons;
}

// =======================
// Floor Painter
// =======================

class FloorPainter extends CustomPainter {
  FloorPainter(this.floor);

  final FloorLayout floor;

  @override
  void paint(Canvas canvas, Size size) {
    // Clip to building polygon
    canvas.save();
    canvas.clipPath(floor.boundary);

    // Background
    canvas.drawPath(floor.boundary, Paint()..color = Colors.grey.shade200);

    // Draw units
    for (final e in floor.elements) {
      final fill = Paint()..color = e.status.color;
      final border = Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.black26;

      final path = e.buildPath();
      canvas.drawPath(path, fill);
      canvas.drawPath(path, border);
    }

    canvas.restore();

    // Floor outline
    canvas.drawPath(
      floor.boundary,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..color = Colors.black38,
    );
  }

  @override
  bool shouldRepaint(_) => false;
}

// =======================
// Generate Floor from Owner Data
// =======================

FloorLayout generateFloorFromOwnerData(OwnerFloorData data) {
  final elements = <LayoutElement>[];
  int index = 1;
  final padding = 8.0;

  // Floor polygon
  final boundary = Path()
    ..moveTo(0, 0)
    ..lineTo(data.width, 0)
    ..lineTo(data.width, data.height)
    ..lineTo(0, data.height)
    ..close();

  // Helper: add RectBox safely
  bool fits(RectBox box) => true; // Simple: no collision for now

  // Generate rows
  double y = padding;
  for (final row in data.rows) {
    double x = padding;
    double unitW, unitH;
    switch (row.unitSize) {
      case UnitSize.small:
        unitW = 14;
        unitH = 10;
        break;
      case UnitSize.medium:
        unitW = 18;
        unitH = 14;
        break;
      case UnitSize.large:
        unitW = 32;
        unitH = 18;
        break;
    }

    for (int i = 0; i < row.count; i++) {
      final rect = Rect.fromLTWH(
        row.orientationHorizontal ? x : y,
        row.orientationHorizontal ? y : x,
        unitW,
        unitH,
      );

      final box = RectBox('U$index', UnitStatus.available, rect: rect);

      if (fits(box)) {
        elements.add(box);
        index++;
      }

      if (row.orientationHorizontal) {
        x += unitW + 4;
      } else {
        y += unitH + 4;
      }
    }

    if (row.orientationHorizontal)
      y += unitH + 6;
    else
      x += unitW + 6;
  }

  // Add special polygons if any
  elements.addAll(data.specialPolygons);

  return FloorLayout(
    name: data.floorName,
    logicalSize: Size(data.width, data.height),
    elements: elements,
    boundary: boundary,
  );
}

// =======================
// Floor Input Screen
// =======================

class CreateFloorScreen extends StatefulWidget {
  const CreateFloorScreen({super.key});

  @override
  State<CreateFloorScreen> createState() => _CreateFloorScreenState();
}

class _CreateFloorScreenState extends State<CreateFloorScreen> {
  final _floorNameController = TextEditingController();
  final _widthController = TextEditingController(text: '240');
  final _heightController = TextEditingController(text: '180');

  final List<OwnerFloorRow> _rows = [];

  String _newRowName = '';
  UnitSize _newRowSize = UnitSize.small;
  int _newRowCount = 1;
  bool _newRowHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Floor Layout')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _floorNameController,
              decoration: const InputDecoration(labelText: 'Floor Name'),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _widthController,
                    decoration: const InputDecoration(labelText: 'Width'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _heightController,
                    decoration: const InputDecoration(labelText: 'Height'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Rows (Units)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (final row in _rows)
              ListTile(
                title: Text(
                  '${row.name} - ${row.count} ${row.unitSize.name} units',
                ),
                subtitle: Text(
                  'Orientation: ${row.orientationHorizontal ? "Horizontal" : "Vertical"}',
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => setState(() => _rows.remove(row)),
                ),
              ),
            const Divider(),
            TextField(
              decoration: const InputDecoration(labelText: 'Row Name'),
              onChanged: (v) => _newRowName = v,
            ),
            Row(
              children: [
                DropdownButton<UnitSize>(
                  value: _newRowSize,
                  items: UnitSize.values
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (v) => setState(() => _newRowSize = v!),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Count'),
                    keyboardType: TextInputType.number,
                    onChanged: (v) =>
                        _newRowCount = int.tryParse(v) ?? _newRowCount,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    const Text('Horizontal'),
                    Checkbox(
                      value: _newRowHorizontal,
                      onChanged: (v) => setState(() => _newRowHorizontal = v!),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (_newRowName.isEmpty || _newRowCount < 1) return;
                setState(() {
                  _rows.add(
                    OwnerFloorRow(
                      name: _newRowName,
                      unitSize: _newRowSize,
                      count: _newRowCount,
                      orientationHorizontal: _newRowHorizontal,
                    ),
                  );
                  _newRowName = '';
                  _newRowCount = 1;
                });
              },
              child: const Text('Add Row'),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _rows.isEmpty ? null : _generateFloor,
                child: const Text('Generate Floor'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _generateFloor() {
    final floorData = OwnerFloorData(
      floorName: _floorNameController.text.isEmpty
          ? 'Floor 1'
          : _floorNameController.text,
      width: double.tryParse(_widthController.text) ?? 240,
      height: double.tryParse(_heightController.text) ?? 180,
      rows: _rows,
    );

    final floor = generateFloorFromOwnerData(floorData);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StorageMapPreviewScreen(floor: floor)),
    );
  }
}

// =======================
// Map Preview Screen
// =======================

class StorageMapPreviewScreen extends StatelessWidget {
  const StorageMapPreviewScreen({super.key, required this.floor});

  final FloorLayout floor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(floor.name)),
      body: InteractiveViewer(
        constrained: false,
        boundaryMargin: const EdgeInsets.all(double.infinity),
        minScale: 0.3,
        maxScale: 6,
        child: CustomPaint(
          size: floor.logicalSize,
          painter: FloorPainter(floor),
        ),
      ),
    );
  }
}
