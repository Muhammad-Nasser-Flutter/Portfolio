import 'package:animations/features/about/presentation/widgets/percentage_widget.dart';
import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PercentageWidget(percentage: 90, title: "FLUTTER"),
            PercentageWidget(percentage: 95, title: "REST APIs"),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PercentageWidget(percentage: 55, title: "FIREBASE"),
            PercentageWidget(percentage: 65, title: "VERSION CONTROL"),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PercentageWidget(percentage: 60, title: "UI/UX"),
            PercentageWidget(percentage: 65, title: "PROBLEM SOLVING"),
          ],
        ),
      ],
    );
  }
}
