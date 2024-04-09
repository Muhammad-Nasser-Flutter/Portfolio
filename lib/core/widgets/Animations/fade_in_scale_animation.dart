import 'package:flutter/material.dart';

class FadeInScaleAnimation extends StatefulWidget {
  const FadeInScaleAnimation(
      {super.key,
      required this.delay,
      required this.child,
      required this.startingOffset});
  final double delay;
  final Offset startingOffset;
  final Widget child;

  @override
  State<FadeInScaleAnimation> createState() => _FadeInScaleAnimationState();
}

class _FadeInScaleAnimationState extends State<FadeInScaleAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<Offset> offsetAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (2000 * widget.delay).round()),
    );

    opacityAnimation = Tween<double>(begin: 0.2, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.fastEaseInToSlowEaseOut))
      ..addListener(() {
        setState(() {});
      });
    offsetAnimation =
        Tween<Offset>(begin: widget.startingOffset, end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: controller, curve: Curves.fastEaseInToSlowEaseOut))
          ..addListener(() {
            setState(() {});
          });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: opacityAnimation.value,
      child: Transform.translate(
        offset: offsetAnimation.value,
        child: Opacity(
          opacity: opacityAnimation.value,
          child: widget.child,
        ),
      ),
    );
  }
}
