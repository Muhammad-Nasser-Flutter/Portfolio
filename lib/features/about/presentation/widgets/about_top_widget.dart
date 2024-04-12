import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/Animations/fade_in_scale_animation.dart';
import '../../../../core/widgets/custom_texts.dart';

class AboutTopWidget extends StatelessWidget {
  const AboutTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInScaleAnimation(
      delay: 1,
      startingOffset: const Offset(0, -450),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text18(
            alignment: TextAlign.center,
            text: "RESUME",
            size: 110,
            spacing: 5,
            textColor: Colors.grey.withOpacity(0.2),
            weight: FontWeight.w900,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text18(
                text: "ABOUT ",
                size: 50,
                spacing: 2,
                textColor: Colors.white,
                weight: FontWeight.w900,
              ),
              Text18(
                text: "ME",
                size: 50,
                spacing: 2,
                textColor: AppColors.primaryColor,
                weight: FontWeight.w900,
              ),
            ],
          )
        ],
      ),
    );
  }
}
