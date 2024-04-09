import 'package:flutter/material.dart';

import '../custom_texts.dart';
import 'fade_in_scale_animation.dart';

class MouseCircleRegion extends StatefulWidget {
  MouseCircleRegion({
    super.key,
    required this.child,
  });
  Offset mouseOffset = const Offset(-100, -100);
  final Widget child;

  @override
  State<MouseCircleRegion> createState() => _MouseCircleRegionState();
}

class _MouseCircleRegionState extends State<MouseCircleRegion> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (p) {
        setState(
          () {
            Future.delayed(
              const Duration(milliseconds: 20),
              () {
                widget.mouseOffset = p.position;
              },
            );
          },
        );
      },
      onExit: (p) {
        setState(
          () {
            widget.mouseOffset = p.position;
          },
        );
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
