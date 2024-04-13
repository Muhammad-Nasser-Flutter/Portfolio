import 'package:animations/core/widgets/Animations/fade_in_animation.dart';
import 'package:animations/features/about/presentation/widgets/percentage_widget.dart';
import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    if(maxWidth > 980){
      return FadeInAnimation(
        delay: 1.5,
        startingOffset: const Offset(-500, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 90, title: "FLUTTER"),
                PercentageWidget(maxWidth:maxWidth,percentage: 95, title: "REST APIs"),
                PercentageWidget(maxWidth:maxWidth,percentage: 55, title: "FIREBASE"),
                PercentageWidget(maxWidth:maxWidth,percentage: 65, title: "VERSION CONTROL"),
              ],
            ),

            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 60, title: "UI/UX"),
                PercentageWidget(maxWidth:maxWidth,percentage: 65, title: "PROBLEM SOLVING"),
                PercentageWidget(maxWidth:maxWidth,percentage: 70, title: "DATABASE"),
                PercentageWidget(maxWidth:maxWidth,percentage: 80, title: "LEADERSHIP"),
              ],
            ),

          ],
        ),
      );

    }else{
      return  FadeInAnimation(
        delay: 1.5,
        startingOffset: const Offset(-500, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 90, title: "FLUTTER"),
                PercentageWidget(maxWidth:maxWidth,percentage: 95, title: "REST APIs"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 55, title: "FIREBASE"),
                PercentageWidget(maxWidth:maxWidth,percentage: 65, title: "VERSION CONTROL"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 60, title: "UI/UX"),
                PercentageWidget(maxWidth:maxWidth,percentage: 65, title: "PROBLEM SOLVING"),
              ],
            ),     const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PercentageWidget(maxWidth:maxWidth,percentage: 70, title: "DATABASE"),
                PercentageWidget(maxWidth:maxWidth,percentage: 80, title: "LEADERSHIP"),
              ],
            ),
          ],
        ),
      );

    }
  }
}
