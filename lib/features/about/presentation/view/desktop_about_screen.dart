import 'package:flutter/material.dart';

import '../../../../core/widgets/Animations/animated_slider_button.dart';
import '../../../../core/widgets/Animations/mouse_circle_region.dart';
import '../../../../core/widgets/custom_texts.dart';
import '../../utils/download_cv.dart';
import '../widgets/about_top_widget.dart';
import '../widgets/career.dart';
import '../widgets/personal_data_widget.dart';
import '../widgets/skills_widget.dart';

class DesktopAboutScreen extends StatefulWidget {
  const DesktopAboutScreen({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  State<DesktopAboutScreen> createState() => _DesktopAboutScreenState();
}

class _DesktopAboutScreenState extends State<DesktopAboutScreen> {
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
  }
  @override
  Widget build(BuildContext context) {
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
                AboutTopWidget(maxWidth: widget.maxWidth),
                const SizedBox(
                  height: 25,
                  width: double.maxFinite,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 20,
                  ),
                  child: PersonalDataWidget(
                    maxWidth: widget.maxWidth,
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    height: 1,
                    width: 200,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text18(
                    text: "MY SKILLS",
                    size: 26,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SkillsWidget(maxWidth: widget.maxWidth,),
              ],
            ),
          ),
          // DOWNLOAD CV
          PositionedDirectional(
            start: 50,
            top: 1050,
            child: AnimatedSliderButton(
              onTap: () => downloadFile(),
              text: "DOWNLOAD CV",
              icon: Icons.download,
            ),
          )
        ],
      ),
    );
  }
}
