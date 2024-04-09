import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_texts.dart';

class IconWithTitleWidget extends StatelessWidget {
  IconWithTitleWidget({
    super.key,
    required this.svgIcon,
    required this.title,
    this.iconColor,
    this.iconSize = 15,
    this.titleColor,
    this.titleSize = 12,
  });
  final String svgIcon;
  final String title;
  double titleSize;
  double iconSize;
  Color? iconColor;
  Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          svgIcon,
          width: iconSize,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 60),
          child: Text12(
            text: title,
            size: titleSize,
            textColor: titleColor,
            maxLines: 1,
            overFlow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
