import 'dart:math';

import 'package:flutter/material.dart';

// ------------------------------------
// MODELS
// ------------------------------------
enum UnitStatus { available, reserved, unavailable }

enum MapElementType { unit, entrance, elevator, corridor }

class MapElement {
  final String id;
  final MapElementType type;
  final UnitStatus? status;
  final int row;
  final int col;

  const MapElement({
    required this.id,
    required this.type,
    this.status,
    required this.row,
    required this.col,
  });
}

// ------------------------------------
// SCREEN
// ------------------------------------
class ChooseUnitScreen extends StatefulWidget {
  const ChooseUnitScreen({super.key});

  @override
  State<ChooseUnitScreen> createState() => _ChooseUnitScreenState();
}

class _ChooseUnitScreenState extends State<ChooseUnitScreen> {
  int selectedLevel = 1;
  String? selectedUnitId;

  late final Map<int, List<MapElement>> levels;

  @override
  void initState() {
    super.initState();
    levels = {
      1: _groundFloor(),
      2: _standardFloor(2),
      3: _denseFloor(),
      4: _premiumFloor(),
      5: _mixedFloor(),
      6: _compactFloor(),
    };
  }

  // ------------------------------------
  // LEVEL GENERATORS (CREATIVE)
  // ------------------------------------
  List<MapElement> _groundFloor() {
    return [
      ..._units(rows: 5, cols: 10, unavailableEvery: 12),
      const MapElement(
        id: 'entrance',
        type: MapElementType.entrance,
        row: 5,
        col: 4,
      ),
      const MapElement(
        id: 'elevator',
        type: MapElementType.elevator,
        row: 1,
        col: 9,
      ),
    ];
  }

  List<MapElement> _standardFloor(int level) {
    return [
      ..._units(rows: 6, cols: 10, reservedEvery: 8),
      const MapElement(
        id: 'elevator',
        type: MapElementType.elevator,
        row: 0,
        col: 9,
      ),
    ];
  }

  List<MapElement> _denseFloor() {
    return [
      ..._units(rows: 8, cols: 12, unavailableEvery: 9),
      const MapElement(
        id: 'elevator',
        type: MapElementType.elevator,
        row: 0,
        col: 11,
      ),
    ];
  }

  List<MapElement> _premiumFloor() {
    return [
      ..._units(rows: 4, cols: 8, reservedEvery: 4),
      const MapElement(
        id: 'elevator',
        type: MapElementType.elevator,
        row: 1,
        col: 7,
      ),
    ];
  }

  List<MapElement> _mixedFloor() {
    return [
      ..._units(rows: 6, cols: 10, unavailableEvery: 7),
      const MapElement(
        id: 'elevator-1',
        type: MapElementType.elevator,
        row: 0,
        col: 9,
      ),
      const MapElement(
        id: 'elevator-2',
        type: MapElementType.elevator,
        row: 5,
        col: 0,
      ),
    ];
  }

  List<MapElement> _compactFloor() {
    return [
      ..._units(rows: 4, cols: 12, unavailableEvery: 3),
      const MapElement(
        id: 'elevator',
        type: MapElementType.elevator,
        row: 0,
        col: 11,
      ),
    ];
  }

  List<MapElement> _units({
    required int rows,
    required int cols,
    int unavailableEvery = 0,
    int reservedEvery = 0,
  }) {
    final rand = Random();
    return List.generate(rows * cols, (i) {
      UnitStatus status = UnitStatus.available;
      if (unavailableEvery > 0 && i % unavailableEvery == 0) {
        status = UnitStatus.unavailable;
      } else if (reservedEvery > 0 && i % reservedEvery == 0) {
        status = UnitStatus.reserved;
      } else if (rand.nextBool()) {
        status = UnitStatus.available;
      }

      return MapElement(
        id: 'U$i',
        type: MapElementType.unit,
        status: status,
        row: i ~/ cols,
        col: i % cols,
      );
    });
  }

  // ------------------------------------
  // UI
  // ------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F5),
      appBar: AppBar(
        title: const Text("Choose Your Unit"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              _legend(),
              Expanded(child: _map()),
            ],
          ),
          _levelSelector(),
          if (selectedUnitId != null) _bottomCard(),
        ],
      ),
    );
  }

  Widget _legend() => _card(
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _Legend("Available", Color(0xFF8BC48A)),
        _Legend("Reserved", Color(0xFFF4C56D)),
        _Legend("Unavailable", Color(0xFFE57373)),
      ],
    ),
  );

  Widget _map() {
    final elements = levels[selectedLevel]!;
    return InteractiveViewer(
      minScale: 0.8,
      maxScale: 2.8,
      boundaryMargin: const EdgeInsets.all(300),
      child: Center(
        child: Wrap(
          spacing: 6,
          runSpacing: 6,
          children: elements.map(_element).toList(),
        ),
      ),
    );
  }

  Widget _element(MapElement e) {
    switch (e.type) {
      case MapElementType.unit:
        return _unit(e);
      case MapElementType.entrance:
        return _icon(Icons.login, "Entrance");
      case MapElementType.elevator:
        return _icon(Icons.elevator, "Elevator");
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _unit(MapElement e) {
    final selected = selectedUnitId == e.id;
    final color = {
      UnitStatus.available: const Color(0xFF8BC48A),
      UnitStatus.reserved: const Color(0xFFF4C56D),
      UnitStatus.unavailable: const Color(0xFFE57373),
    }[e.status]!;

    const unitWidth = 28.0;
    const unitHeight = 52.0;
    const highlightPadding = 4.0;

    return GestureDetector(
      onTap: e.status == UnitStatus.available
          ? () => setState(() => selectedUnitId = e.id)
          : null,
      child: SizedBox(
        width: unitWidth,
        height: unitHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // OUTER HIGHLIGHT (outside layout)
            if (selected)
              Positioned(
                left: -highlightPadding,
                top: -highlightPadding,
                right: -highlightPadding,
                bottom: -highlightPadding,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4 + highlightPadding),
                    border: Border.all(
                      color: const Color(0xFF4FC3F7),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF4FC3F7).withOpacity(0.35),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),

            // ACTUAL UNIT (base color ONLY)
            Container(
              width: unitWidth,
              height: unitHeight,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            // INNER BLUE PRESENCE (ABOVE the unit)
            if (selected)
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: RadialGradient(
                      center: const Alignment(0, -0.2),
                      radius: 1.1,
                      colors: [
                        const Color(0xFF64B5F6).withOpacity(0.25),
                        const Color(0xFF64B5F6).withOpacity(0.25),
                        // Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _icon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 22, color: Colors.black54),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }

  Widget _levelSelector() {
    return Positioned(
      right: 12,
      top: 80,
      child: Column(
        children: levels.keys.map((level) {
          final active = level == selectedLevel;
          return GestureDetector(
            onTap: () => setState(() {
              selectedLevel = level;
              selectedUnitId = null;
            }),
            child: _card(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Level $level",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  _miniMap(level),
                ],
              ),
              active: active,
              width: 100,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _miniMap(int level) {
    final units = levels[level]!.where((e) => e.type == MapElementType.unit);
    return Wrap(
      spacing: 1,
      runSpacing: 1,
      children: units
          .map(
            (e) => Container(
              width: 4,
              height: 5,
              decoration: BoxDecoration(
                color: {
                  UnitStatus.available: const Color(0xFF8BC48A),
                  UnitStatus.reserved: const Color(0xFFF4C56D),
                  UnitStatus.unavailable: const Color(0xFFE57373),
                }[e.status],
                borderRadius: BorderRadius.circular(1.5),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _bottomCard() => Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: _card(
      Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "10x10 Unit",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("Monthly \$85"),
          SizedBox(height: 16),
        ],
      ),
    ),
  );

  Widget _card(
    Widget child, {
    bool active = false,
    double width = double.infinity,
  }) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: active ? Border.all(color: Colors.green, width: 2) : null,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 6),
        ],
      ),
      child: child,
    );
  }
}

// ------------------------------------
// LEGEND
// ------------------------------------
class _Legend extends StatelessWidget {
  final String label;
  final Color color;

  const _Legend(this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(label),
      ],
    );
  }
}
