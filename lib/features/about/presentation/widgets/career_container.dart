import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_texts.dart';

class CareerContainer extends StatelessWidget {
  const CareerContainer({super.key, required this.number, required this.text});
  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                text: number,
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
                  text: text,
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
    );
  }
}
