import 'package:animations/features/about/presentation/widgets/personal_info_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/widgets/Animations/fade_in_animation.dart';
import 'career_container.dart';

class CareerWidget extends StatelessWidget {
  const CareerWidget({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: FadeInAnimation(
        delay: 1.5,
        startingOffset: const Offset(-500, 0),
        child: Column(
          children: [
            Row(
              children: [
                CareerContainer(text: "YEARS OF EXPERIENCE", number: "2",maxWidth: maxWidth,),
                const Spacer(),
                CareerContainer(text: "MOBILE APPs", number: "12",maxWidth: maxWidth,),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CareerContainer(text: "HAPPY CLIENTS", number: "10",maxWidth: maxWidth,),
                const Spacer(),
                CareerContainer(text: "COMPANIES TRUSTED", number: "2",maxWidth: maxWidth,),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
