import 'package:animations/features/about/presentation/view/desktop_about_screen.dart';
import 'package:animations/features/about/presentation/view/mobile_about_screen.dart';
import 'package:animations/features/about/presentation/view/tablet_about_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/assets.dart';
import '../../../core/widgets/Animations/fade_in_scale_animation.dart';
import '../../../core/widgets/Animations/mouse_circle_region.dart';
import '../../../core/widgets/custom_texts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints sizingInformation) {
        if (sizingInformation.maxWidth > 980) {
          return DesktopAboutScreen(
            maxWidth: sizingInformation.maxWidth,
          );
        } else if (sizingInformation.maxWidth > 520 &&
            sizingInformation.maxWidth < 980) {
          return TabletAboutScreen(
            maxWidth: sizingInformation.maxWidth,
          );
        } else {
          return MobileAboutScreen(
            maxWidth: sizingInformation.maxWidth,
          );
        }
      },
    );
  }
}
