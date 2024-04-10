import 'package:flutter/material.dart';

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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (p) {
        if(mounted){
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
        }
      },
      onExit: (p) {
        if(mounted){
          setState(
                () {
              widget.mouseOffset = p.position;
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
