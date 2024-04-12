import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_texts.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text28(
          text: "$title :",
          size: 18,
          textColor: Colors.white.withOpacity(0.5),
          weight: FontWeight.w500,
        ),
        const SizedBox(
          height: 5,
        ),
        Text28(
          text: value,
          size: 18,
          textColor: Colors.white,
          weight: FontWeight.w500,
        ),
      ]
    );
  }
}
