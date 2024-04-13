import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_texts.dart';

class CareerContainer extends StatelessWidget {
  const CareerContainer(
      {super.key,
      required this.number,
      required this.text,
      required this.maxWidth});
  final String number;
  final String text;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: maxWidth < 520
          ? 170
          : maxWidth < 1100
              ? 200
              : maxWidth > 1300
                  ? 280
                  : 250,
      height: maxWidth < 520 ? 120 : 150,
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
                text: number,
                size: maxWidth < 520 ? 40 : 50,
                textColor: AppColors.primaryColor,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                width: 3,
              ),
              Text18(
                text: "+",
                size: maxWidth < 520 ? 30 : 40,
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
                width: 20,
                color: const Color(0xFF777777),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text18(
                  text: text,
                  size: maxWidth < 520 ? 16 : 18,
                  maxLines: 2,
                  textColor: Colors.white,
                  weight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
