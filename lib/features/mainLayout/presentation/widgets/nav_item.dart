import 'package:animations/core/theming/colors.dart';
import 'package:animations/core/widgets/Animations/fade_in_animation.dart';
import 'package:animations/core/widgets/Animations/fade_in_scale_animation.dart';
import 'package:animations/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/icon_widget.dart';
import '../../Bloc/main_layout_cubit.dart';

class NavItem extends StatefulWidget {
  const NavItem(
      {super.key,
      required this.onPressed,
      required this.bGColor,
      required this.iconAsset,
      required this.index,
      required this.title});
  final VoidCallback onPressed;
  final Color bGColor;
  final String iconAsset;
  final String title;
  final int index;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: widget.onPressed,
        child: MouseRegion(
          onHover: (event) {
            if (mounted) {
              setState(() {
                isHover = true;
              });
            }
          },
          onExit: (event) {
            if (mounted) {
              setState(() {
                isHover = false;
              });
            }
          },
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: AlignmentDirectional.centerEnd,
            children: [
              if (isHover)
                FadeInScaleAnimation(
                  startingOffset: const Offset(0, 20),
                  delay: 0.3,
                  child: AnimatedContainer(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: AlignmentDirectional.centerStart,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.primaryColor,
                    ),
                    height: 52,
                    width: 150,
                    child: Text16(
                      text: widget.title,
                      size: 16,
                    ),
                  ),
                ),
              IconWidget(
                iconAsset: widget.iconAsset,
                bGColor: isHover ? AppColors.primaryColor : widget.bGColor,
                iconColor: Colors.white,
                size: 22,
                radius: 40,
                padding: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
