import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Separator extends StatelessWidget {
  double? margin ;
  Separator({super.key,this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 15),
      width: double.maxFinite,
      height: 1,
      color: Colors.grey.withOpacity(0.2),
    );
  }
}