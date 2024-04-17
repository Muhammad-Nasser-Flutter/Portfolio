import 'package:flutter/material.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/widgets/Animations/fade_in_animation.dart';
import '../../../../core/widgets/Animations/fade_in_scale_animation.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      delay: 1,
      startingOffset: const Offset(1000, 0),
      child: CircleAvatar(
        radius: maxWidth>980?150:maxWidth>520?125:105,
        backgroundColor: Colors.grey.withOpacity(0.2),
        child: CircleAvatar(
          radius: maxWidth>980?145:maxWidth>520?120:100,
          backgroundColor: const Color(0xFF252525),
          backgroundImage: const AssetImage(Assets.myPicture),
        ),
      ),
    );
  }
}
