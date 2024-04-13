import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_texts.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({super.key, required this.title, required this.value, required this.maxWidth});
  final String title;
  final String value;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text28(
          text: "$title :",
          size: maxWidth>980? 16:maxWidth<520? 16:18,
          textColor: Colors.white.withOpacity(0.5),
          weight: FontWeight.w500,
        ),
        const SizedBox(
          height: 5,
        ),
        Text28(
          text: value,
          size: maxWidth>980? 16:maxWidth<520? 14:18,
          textColor: Colors.white,
          weight: FontWeight.w500,
        ),
      ]
    );
  }
}
