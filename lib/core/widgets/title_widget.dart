import 'package:flutter/material.dart';
 
import 'custom_texts.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({
    super.key,
    required this.title,
    this.icon,
    this.bGColor,
    this.verticalPadding = 10,
    this.horizontalPadding = 10,
    this.iconSize = 30,
    this.textSize = 22,
  });
  final String title;
  IconData? icon;
  Color? bGColor;
  double horizontalPadding;
  double verticalPadding;
  double iconSize;
  double textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      decoration: BoxDecoration(
        color: bGColor ?? const Color(0xFF181818).withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                Icons.location_pin,
                color: Colors.white,
                size: iconSize,
              ),
            if (icon != null)
              const SizedBox(
                width: 5,
              ),
            Text22Ar(
              text: title,
              size: textSize,
            ),
          ],
        ),
      ),
    );
  }
}
