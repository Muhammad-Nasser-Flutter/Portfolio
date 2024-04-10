import 'package:animations/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_texts.dart';

class DrawerItem extends StatefulWidget {
  final String icon;
  final double iconSize;
  final String label;
  final VoidCallback onPressed;
  const DrawerItem({super.key, required this.icon, required this.label, required this.onPressed,this.iconSize = 25});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
             color:AppColors.grey,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(widget.icon,width: widget.iconSize,color:isHovered ? AppColors.primaryColor : Colors.white,),
                const SizedBox(width: 35),
                Text16Ar(text: widget.label.toUpperCase(),size: 18,height: 0.8,textColor: isHovered ? AppColors.primaryColor : Colors.white,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}