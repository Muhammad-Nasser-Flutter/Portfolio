import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_texts.dart';

class PercentageWidget extends StatefulWidget {
  const PercentageWidget(
      {super.key,
      required this.percentage,
      required this.title,
      required this.maxWidth});
  final double percentage;
  final double maxWidth;
  final String title;

  @override
  State<PercentageWidget> createState() => _PercentageWidgetState();
}

class _PercentageWidgetState extends State<PercentageWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double>? percentageAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (3000).round()),
    );
    percentageAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut))
      ..addListener(() {
        if (mounted) setState(() {});
      });
    controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: widget.maxWidth > 980 ?110 :  widget.maxWidth < 520?100:120,
                height:  widget.maxWidth > 980 ?110 :  widget.maxWidth < 520?100:120,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value:
                      (widget.percentage * percentageAnimation!.value).round() /
                          100,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    AppColors.primaryColor,
                  ),
                  strokeCap: StrokeCap.round,
                  backgroundColor: Colors.grey.shade800,
                ),
              ),
              Text18(
                text:
                    "${(widget.percentage * percentageAnimation!.value).round()}%",
                size: widget.maxWidth > 980 ? 26 :widget.maxWidth < 520?24: 28,
                weight: FontWeight.w700,
                textColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text18(
            text: widget.title,
            size: 20,
          ),
        ],
      ),
    );
  }
}
