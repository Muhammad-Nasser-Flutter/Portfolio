import 'package:flutter/material.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/widgets/Animations/fade_in_animation.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      delay: 1,
      startingOffset: const Offset(1000, 0),
      child: CircleAvatar(
        radius: 125,
        backgroundColor: Colors.grey.withOpacity(0.2),
        child: const CircleAvatar(
          radius: 120,
          backgroundColor: Color(0xFF252525),
          backgroundImage: AssetImage(Assets.myPicture),
        ),
      ),
    );
  }
}
