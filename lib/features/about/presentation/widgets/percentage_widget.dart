import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_texts.dart';

class PercentageWidget extends StatefulWidget {
  const PercentageWidget({super.key, required this.percentage, required this.title});
  final double percentage ;
  final String title;

  @override
  State<PercentageWidget> createState() => _PercentageWidgetState();
}

class _PercentageWidgetState extends State<PercentageWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller ;
  late Animation<double>? percentageAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (2000).round()),

    );
    percentageAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut))
      ..addListener(() {
        if(mounted) setState(() {});
      });
    controller.forward();
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
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: (widget.percentage*percentageAnimation!.value).round()/100,
                  valueColor:
                  const AlwaysStoppedAnimation<Color>(
                    AppColors.primaryColor,
                  ),
                  strokeCap: StrokeCap.round,
                  backgroundColor: Colors.grey.shade800,
                ),
              ),
              Text18(
                text: "${(widget.percentage*percentageAnimation!.value).round()}%",
                size: 30,
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
            size: 22,
          ),
        ],
      ),
    );
  }
}
