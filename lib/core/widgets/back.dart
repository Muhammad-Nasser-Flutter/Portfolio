import 'package:animations/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  Back({
    super.key,
    this.radius = 15,
    this.reversed = false,
    this.onPressed,
    this.iconSize,
    this.bGColor,
    this.iconColor,
  });
  double radius;
  bool reversed;
  Color? iconColor;
  double? iconSize;
  VoidCallback? onPressed;
  Color? bGColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ??
          () {
            context.pop();
          },
      child: CircleAvatar(
        backgroundColor: bGColor ?? Colors.white.withOpacity(0.4),
        radius: radius,
        child: Icon(
          reversed ? Icons.arrow_forward_ios : Icons.arrow_back_ios_new,
          size: iconSize,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}
