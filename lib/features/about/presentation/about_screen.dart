import 'dart:html' as html;

import 'package:animations/core/theming/colors.dart';
import 'package:animations/features/about/presentation/widgets/personal_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/theming/assets.dart';
import '../../../core/widgets/Animations/animated_slider_button.dart';
import '../../../core/widgets/Animations/fade_in_animation.dart';
import '../../../core/widgets/Animations/fade_in_scale_animation.dart';
import '../../../core/widgets/Animations/mouse_circle_region.dart';
import '../../../core/widgets/custom_texts.dart';
import '../../../core/widgets/icon_widget.dart';
import '../utils/download_cv.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  ScrollController scrollController = ScrollController();
  double scrollOffset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    setState(() {
      scrollOffset = scrollController.offset;
    });
    print("Scroll Offset: ${scrollController.offset}");
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints sizingInformation) {
        if (sizingInformation.maxWidth > 980) {
          return SingleChildScrollView(
            controller: scrollController,
            child: MouseCircleRegion(
              scrollOffset: scrollOffset,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                    height: double.maxFinite,
                  ),
                  FadeInScaleAnimation(
                    delay: 1,
                    startingOffset: const Offset(0, -450),
                    child: Container(
                      height: 620,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/My Picture.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: FadeInScaleAnimation(
                            delay: 1.2,
                            startingOffset: const Offset(-500, 0),
                            child: Text28(
                              text: "I'M MUHAMMAD NASSER.",
                              size: 38,
                              textColor: const Color(0xFFffb400),
                              weight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: FadeInScaleAnimation(
                            delay: 1.4,
                            startingOffset: const Offset(500, 0),
                            child: Text28(
                              text: "SOFTWARE ENGINEER",
                              size: 38,
                              textColor: Colors.white,
                              weight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: FadeInScaleAnimation(
                            delay: 1.6,
                            startingOffset: const Offset(500, 0),
                            child: Text12(
                              size: 15,
                              textColor: Colors.white,
                              alignment: TextAlign.start,
                              text:
                                  "I'm a Self-motivated Developer with high level of experience over more than 2 years collaborating and working on multiple mobile app-based projects. Pulls from active knowledge of current technology landscape to promote best practices in mobile app development.",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                ],
              ),
            ),
          );
        } else if (sizingInformation.maxWidth > 520 &&
            sizingInformation.maxWidth < 980) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Stack(
              children: [
                MouseCircleRegion(
                  scrollOffset: scrollOffset,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      FadeInScaleAnimation(
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
                      ),
                      const SizedBox(
                        height: 25,
                        width: double.maxFinite,
                      ),
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
                        child: FadeInAnimation(
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
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 20),
                        child: FadeInAnimation(
                          delay: 1.4,
                          startingOffset: Offset(-500, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
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
                              ),
                              // Spacer(),
                              Expanded(
                                child: Column(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text18(
                                            text: "2",
                                            size: 50,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text18(
                                            text: "+",
                                            size: 40,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 12),
                                            height: 2,
                                            width: 30,
                                            color: const Color(0xFF777777),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text18(
                                              text: "YEARS OF EXPERIENCE",
                                              size: 18,
                                              maxLines: 2,
                                              textColor: Colors.white,
                                              weight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text18(
                                            text: "2",
                                            size: 50,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text18(
                                            text: "+",
                                            size: 40,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 12),
                                            height: 2,
                                            width: 30,
                                            color: const Color(0xFF777777),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text18(
                                              text: "YEARS OF EXPERIENCE",
                                              size: 18,
                                              maxLines: 2,
                                              textColor: Colors.white,
                                              weight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text18(
                                            text: "2",
                                            size: 50,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text18(
                                            text: "+",
                                            size: 40,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 12),
                                            height: 2,
                                            width: 30,
                                            color: const Color(0xFF777777),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text18(
                                              text: "YEARS OF EXPERIENCE",
                                              size: 18,
                                              maxLines: 2,
                                              textColor: Colors.white,
                                              weight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text18(
                                            text: "2",
                                            size: 50,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text18(
                                            text: "+",
                                            size: 40,
                                            textColor: AppColors.primaryColor,
                                            weight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 12),
                                            height: 2,
                                            width: 30,
                                            color: const Color(0xFF777777),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text18(
                                              text: "YEARS OF EXPERIENCE",
                                              size: 18,
                                              maxLines: 2,
                                              textColor: Colors.white,
                                              weight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                PositionedDirectional(
                  start: 50,
                  top: 1000,
                  child: AnimatedSliderButton(
                    onTap: () => downloadFile(),
                    text: "DOWNLOAD CV",
                    icon: Icons.download,
                  ),
                )
              ],
            ),
          );
        } else {
          print("mobile");
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              MouseCircleRegion(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const FadeInScaleAnimation(
                      delay: 1,
                      startingOffset: Offset(0, -450),
                      child: CircleAvatar(
                        radius: 105,
                        backgroundColor: Color(0xFF252525),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Color(0xFF252525),
                          backgroundImage: AssetImage(Assets.myPicture),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                      width: double.maxFinite,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: FadeInScaleAnimation(
                        delay: 1.2,
                        startingOffset: const Offset(-500, 0),
                        child: Text28(
                          text: "I'M MUHAMMAD NASSER.",
                          size: 29,
                          textColor: const Color(0xFFffb400),
                          weight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: FadeInScaleAnimation(
                        delay: 1.4,
                        startingOffset: const Offset(500, 0),
                        child: Text28(
                          text: "SOFTWARE ENGINEER",
                          size: 29,
                          textColor: Colors.white,
                          weight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: FadeInScaleAnimation(
                        delay: 1.6,
                        startingOffset: const Offset(500, 0),
                        child: Text12(
                          size: 14,
                          textColor: Colors.white,
                          alignment: TextAlign.center,
                          text:
                              "I'm a Self-motivated Developer with high level of experience over more than 2 years collaborating and working on multiple mobile app-based projects. Pulls from active knowledge of current technology landscape to promote best practices in mobile app development.",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
