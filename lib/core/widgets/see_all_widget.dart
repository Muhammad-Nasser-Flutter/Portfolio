import 'package:flutter/material.dart';

import 'custom_texts.dart';

class SeeAllWidget extends StatelessWidget {
  SeeAllWidget({super.key, required this.onPressed,this.color});
  final VoidCallback onPressed;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Text12(text: "See All",textColor: color,),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: color??Colors.white,
            size: 15,
          ),
        ],
      ),
    );
  }
}
