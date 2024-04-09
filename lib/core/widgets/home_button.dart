import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
 
import '../../../../core/widgets/custom_texts.dart';
import '../cache_helper/cache_helper.dart';
import 'back.dart';

class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;
  double height;
  final String title;
  HomeButton({super.key, required this.onPressed, this.height = 100, required this.title,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color.fromARGB(139, 185, 185, 185)),
            borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: GlassmorphicContainer(
          height: height,
          width: double.maxFinite,
          borderRadius: 15,
          blur: 3,
          linearGradient: LinearGradient(
            colors: [
              const Color(0xFF295209).withOpacity(0.6),
              const Color(0xFF295209).withOpacity(0.1),
              const Color.fromARGB(31, 41, 41, 41),
              const Color(0xFF295209).withOpacity(0.4),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: 0,
          borderGradient: const LinearGradient(
            colors: [
              Colors.white30,
              Colors.white24,
              Colors.white,
              Colors.white,
            ],
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child:CacheHelper.isEnglish()? Text28(text: title):Text28Ar(text: title),
                  ),
                  Back(radius: 15,onPressed: (){},reversed: true,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}