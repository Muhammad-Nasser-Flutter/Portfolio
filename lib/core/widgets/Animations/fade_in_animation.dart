import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  const FadeInAnimation({super.key, required this.delay, required this.child, required this.startingOffset});
  final double delay;
  final Offset startingOffset;
  final Widget child;

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
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

    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Curves.fastEaseInToSlowEaseOut))
      ..addListener(() {
        if(mounted) setState(() {});
      });
    offsetAnimation =
    Tween<Offset>(begin: widget.startingOffset, end: const Offset(0, -0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.fastEaseInToSlowEaseOut))
      ..addListener(() {
        if(mounted) setState(() {});
      });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Transform.translate(
      offset: offsetAnimation.value,
      child: Opacity(
        opacity: opacityAnimation.value,
        child: widget.child,
      ),
    );
  }
}
