import 'dart:async';
import 'package:flutter/material.dart';

class MousePositionStream {
  final StreamController<Offset> _controller = StreamController<Offset>.broadcast();
  final StreamController<double> _scrollController = StreamController<double>.broadcast();
  
  Stream<Offset> get positionStream => _controller.stream;
  Stream<double> get scrollStream => _scrollController.stream;
  
  void updatePosition(Offset position) => _controller.add(position);
  void updateScroll(double offset) => _scrollController.add(offset);
  
  void dispose() {
    _controller.close();
    _scrollController.close();
  }
}

class MouseCircleRegion extends StatefulWidget {
  const MouseCircleRegion({
    super.key,
    required this.child,
    this.hasScroll = false,
    this.scrollController,
    this.showDebugInfo = false,
  });

  final Widget child;
  final bool hasScroll;
  final ScrollController? scrollController;
  final bool showDebugInfo;

  @override
  State<MouseCircleRegion> createState() => _MouseCircleRegionState();
}

class _MouseCircleRegionState extends State<MouseCircleRegion> {
  final MousePositionStream _mouseStream = MousePositionStream();
  late StreamSubscription<double> _scrollSubscription;

  @override
  void initState() {
    super.initState();
    if (widget.hasScroll && widget.scrollController != null) {
      widget.scrollController!.addListener(_handleScroll);
      _scrollSubscription = _mouseStream.scrollStream.listen((_) {});
    }
  }

  @override
  void dispose() {
    _mouseStream.dispose();
    if (widget.hasScroll && widget.scrollController != null) {
      widget.scrollController!.removeListener(_handleScroll);
      _scrollSubscription.cancel();
    }
    super.dispose();
  }

  void _handleScroll() {
    _mouseStream.updateScroll(widget.scrollController!.offset);
  }

  // void _handleHover(PointerHoverEvent event) {
  //   _mouseStream.updatePosition(event.position);
  // }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (p)=> _mouseStream.updatePosition(p.position),
      onEnter:(p)=> _mouseStream.updatePosition(p.position),
      onExit: (p) => _mouseStream.updatePosition(p.position),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          widget.child,
          StreamBuilder<Offset>(
            stream: _mouseStream.positionStream,
            builder: (context, snapshot) {
              final position = snapshot.data ?? Offset.zero;
              return StreamBuilder<double>(
                stream: _mouseStream.scrollStream,
                builder: (context, scrollSnapshot) {
                  final scrollOffset = scrollSnapshot.data ?? 0.0;
                  return AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOutCubic,
                    left: position.dx - 25,
                    top: position.dy - 25 + scrollOffset,
                    child: IgnorePointer(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFffb400).withAlpha(80),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
          if (widget.showDebugInfo)
            StreamBuilder<Offset>(
              stream: _mouseStream.positionStream,
              builder: (context, snapshot) {
                final position = snapshot.data ?? Offset.zero;
                return StreamBuilder<double>(
                  stream: _mouseStream.scrollStream,
                  builder: (context, scrollSnapshot) {
                    final scrollOffset = scrollSnapshot.data ?? 0.0;
                    return Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Global: (${position.dx.toStringAsFixed(1)}, '
                              '${position.dy.toStringAsFixed(1)})',
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Scroll offset: ${scrollOffset.toStringAsFixed(1)}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
        ],
      ),
    );
  }
}