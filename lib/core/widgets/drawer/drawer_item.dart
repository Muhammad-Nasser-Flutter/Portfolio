import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_texts.dart';

class DrawerItem extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onPressed;
  const DrawerItem({super.key, required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
           color:const Color(0XFF222428),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 20.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(icon,width: 20,),
              const SizedBox(width: 15),
              Text16Ar(text: label),
            ],
          ),
        ),
      ),
    );
  }
}