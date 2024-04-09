import 'package:animations/core/theming/assets.dart';
import 'package:animations/core/widgets/Animations/animated_slider_button.dart';
import 'package:animations/core/widgets/Animations/fade_in_animation.dart';
import 'package:animations/core/widgets/Animations/fade_in_scale_animation.dart';
import 'package:animations/core/widgets/Animations/mouse_circle_region.dart';
import 'package:animations/core/widgets/custom_text_form_field.dart';
import 'package:animations/core/widgets/custom_texts.dart';
import 'package:animations/core/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool buttonHovered = false;
  Offset mouseOffset = const Offset(-20, -20);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        title: 'My Animations',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF111111),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                              AssetImage("assets/images/unnamed.jpg"),
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
              Positioned(
                top: 40,
                right: 40,
                child: IconWidget(
                  iconAsset: Assets.menuIcon,
                  bGColor: const Color(0xFF252525),
                  iconColor: Colors.white,
                  radius: 5,
                  size: 32,
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
