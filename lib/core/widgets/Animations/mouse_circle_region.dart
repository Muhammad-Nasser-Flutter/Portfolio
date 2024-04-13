import 'package:flutter/material.dart';

class MouseCircleRegion extends StatefulWidget {
  MouseCircleRegion({
    super.key,
    required this.child,
    this.scrollOffset = 0,
  });
  Offset mouseOffset = const Offset(-100, -100);
  final Widget child;
  double scrollOffset;

  @override
  State<MouseCircleRegion> createState() => _MouseCircleRegionState();
}

class _MouseCircleRegionState extends State<MouseCircleRegion> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      onHover: (p) {
        if (mounted) {
          setState(
            () {
              widget.mouseOffset = p.position + Offset(0, widget.scrollOffset);
            },
          );
        }
      },
      onExit: (p) {
        if (mounted) {
          setState(
            () {
              widget.mouseOffset = p.position + Offset(0, widget.scrollOffset);
            },
          );
        }
      },
      child: Stack(
        children: [
          widget.child,
          Positioned(
            left: widget.mouseOffset.dx - 25,
            top: widget.mouseOffset.dy - 25,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFffb400).withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
