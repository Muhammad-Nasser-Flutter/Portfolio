import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  IconWidget({
    super.key,
    this.onPressed,
    required this.iconAsset,
    this.size,
    this.padding = 10,
    this.iconColor,
    this.bGColor,this.radius = 5,
  });
  VoidCallback? onPressed;
  final String iconAsset;
  double? size;
  double padding;
  double radius;
  Color? iconColor;
  Color? bGColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bGColor,
        ),
        child: Container(
          padding: EdgeInsets.all(padding),
          child: SvgPicture.asset(
            iconAsset,
            width: size,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
