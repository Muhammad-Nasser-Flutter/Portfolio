import 'package:animations/features/about/presentation/widgets/personal_info_item.dart';
import 'package:animations/features/about/presentation/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/Animations/fade_in_animation.dart';
import '../../../../core/widgets/custom_texts.dart';
import 'career.dart';

class PersonalDataWidget extends StatelessWidget {
  const PersonalDataWidget({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInAnimation(
          delay: 1.2,
          startingOffset: const Offset(-500, 0),
          child: Text28(
            text: "PERSONAL INFO.",
            size: 28,
            textColor: Colors.white,
            weight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ProfilePic(maxWidth: maxWidth),
        const SizedBox(
          height: 30,
        ),
        FadeInAnimation(
          delay: 1.4,
          startingOffset: const Offset(-500, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfoItem(
                    title: "First Name",
                    value: "Muhammad",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Last Name",
                    value: "Nasser",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Age",
                    value: "23 Years",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Nationality",
                    value: "Egyptian",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Freelance",
                    value: "Available",
                    maxWidth: maxWidth,
                  ),
                ],
              ),
              if (maxWidth < 980) const Spacer(),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfoItem(
                    title: "Address",
                    value: "Cairo, Egypt",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Phone Number",
                    value: "+201284371026",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Email",
                    value: "memonasser135@gmail.com",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Languages",
                    value: "Arabic, English",
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Framework",
                    value: "Flutter",
                    maxWidth: maxWidth,
                  ),
                ],
              ),
              if (maxWidth < 980) const Spacer(),
              if (maxWidth > 980)
                Expanded(
                  child: CareerWidget(maxWidth: maxWidth),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
