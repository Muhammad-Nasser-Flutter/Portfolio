import 'package:animations/features/about/presentation/widgets/personal_info_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/widgets/Animations/fade_in_animation.dart';
import 'career_container.dart';

class CareerWidget extends StatelessWidget {
  const CareerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CareerContainer(text: "YEARS OF EXPERIENCE", number: "2"),
              Spacer(),
              CareerContainer(text: "MOBILE APPLICATIONS", number: "12"),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CareerContainer(text: "HAPPY CLIENTS", number: "10"),
              Spacer(),
              CareerContainer(text: "COMPANIES TRUSTED", number: "2"),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
