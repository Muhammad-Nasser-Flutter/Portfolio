import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/theming/assets.dart';
import '../../../core/widgets/Animations/animated_slider_button.dart';
import '../../../core/widgets/Animations/fade_in_scale_animation.dart';
import '../../../core/widgets/Animations/mouse_circle_region.dart';
import '../../../core/widgets/custom_texts.dart';
import '../../../core/widgets/icon_widget.dart';

class MailScreen extends StatelessWidget {
  const MailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints sizingInformation) {
        if (sizingInformation.maxWidth > 980) {
          print("desktop");
          print("${sizingInformation.maxWidth}");
          return Scaffold(
            body: Stack(
              children: [
                MouseCircleRegion(
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
                                  fit: BoxFit.cover)),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
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
                Positioned(
                  bottom: 100,
                  left: 420,
                  child: AnimatedSliderButton(),
                ),
              ],
            ),
          );
        }
        else if (sizingInformation.maxWidth > 520 &&
            sizingInformation.maxWidth < 980) {
          print("tablet");
          print("${sizingInformation.maxWidth}");
          return Scaffold(
            body: Stack(
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
                          radius: 125,
                          backgroundColor: Color(0xFF252525),
                          child: CircleAvatar(
                            radius: 120,
                            backgroundColor: Color(0xFF252525),
                            backgroundImage:
                                AssetImage("assets/images/My Picture.jpg"),
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
                Positioned(
                  bottom: 100,
                  child: AnimatedSliderButton(),
                ),
              ],
            ),
          );
        }
        else {
          print("mobile");
          return Scaffold(
            body: Stack(
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
                            backgroundImage:
                                AssetImage("assets/images/My Picture.jpg"),
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
                Positioned(
                  bottom: 100,
                  child: AnimatedSliderButton(),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
