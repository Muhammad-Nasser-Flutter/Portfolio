import 'package:animations/features/about/presentation/widgets/personal_info_item.dart';
import 'package:animations/features/about/presentation/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/Animations/fade_in_animation.dart';
import '../../../../core/widgets/custom_texts.dart';

class PersonalDataWidget extends StatelessWidget {
  const PersonalDataWidget({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: FadeInAnimation(
            delay: 1.2,
            startingOffset: const Offset(-500, 0),
            child: Text28(
              text: "PERSONAL INFO.",
              size: 28,
              textColor: Colors.white,
              weight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: ProfilePic(maxWidth: maxWidth),
        ),
        const SizedBox(
          height: 30,
        ),
        const FadeInAnimation(
          delay: 1.4,
          startingOffset: Offset(-500, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfoItem(
                    title: "First Name",
                    value: "Muhammad",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Last Name",
                    value: "Nasser",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Age",
                    value: "23 Years",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Nationality",
                    value: "Egyptian",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Freelance",
                    value: "Available",
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfoItem(
                    title: "Address",
                    value: "Cairo, Egypt",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Phone Number",
                    value: "+201284371026",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Email",
                    value: "memonasser135@gmail.com",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Languages",
                    value: "Arabic, English",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PersonalInfoItem(
                    title: "Framework",
                    value: "Flutter",
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
