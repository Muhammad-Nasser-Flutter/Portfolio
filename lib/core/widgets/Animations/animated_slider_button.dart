import 'package:animations/features/mainLayout/Bloc/main_layout_cubit.dart';
import 'package:flutter/material.dart';

import '../custom_texts.dart';
import 'fade_in_animation.dart';

class AnimatedSliderButton extends StatefulWidget {
  AnimatedSliderButton({
    super.key,
  });
  bool buttonHovered = false;

  @override
  State<AnimatedSliderButton> createState() => _AnimatedSliderButtonState();
}

class _AnimatedSliderButtonState extends State<AnimatedSliderButton> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      onEnter: (event) {
        if (mounted) {
          setState(() {
            widget.buttonHovered = true;
          });
        }
      },
      onExit: (event) {
        if (mounted) {
          setState(() {
            widget.buttonHovered = false;
          });
        }
      },
      child: InkWell(
        onTap: () {
          MainLayoutCubit.get(context).changeBottomNav(1);
        },
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: const Color(0xFFffb400),
              width: 1,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          height: 60,
          width: 250,
          child: Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              AnimatedContainer(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFffb400),
                ),
                height: 60,
                width: widget.buttonHovered ? 250 : 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text16(
                    text: "MORE ABOUT ME",
                    textColor: Colors.white,
                    size: 16,
                  ),
                  Container(
                    width: 58,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFffb400),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
