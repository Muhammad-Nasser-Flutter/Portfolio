import 'package:flutter/material.dart';

import '../theming/colors.dart';
import 'custom_texts.dart';

class BackgroundedText extends StatelessWidget {
  BackgroundedText({
    super.key,
    this.textSize = 12,
    this.textColor,
    this.backgroundColor,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    required this.text,
  });
  final String text;
  double textSize;
  Color? textColor;
  Color? backgroundColor;
  double? borderRadius;
  double? horizontalPadding;
  double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 20, vertical: verticalPadding ?? 5),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.greenTextColor.withOpacity(0.16),
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      child: Text12(
        text: text,
        textColor: textColor ?? AppColors.greenTextColor,
        size: textSize,
      ),
    );
  }
}
