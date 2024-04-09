import 'package:flutter/material.dart';
import '../theming/colors.dart';
import 'custom_texts.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  double lineHeight;
  ExpandableTextWidget({super.key, required this.text, this.lineHeight = 1});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = 150;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text12(
              text: firstHalf,
              size: 16,
              textColor: Colors.white70,
              height: widget.lineHeight,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text12(
                  text:
                      hiddenText ? ('$firstHalf...') : (firstHalf + secondHalf),
                  size: 16,
                  textColor: Colors.white70,
                  height: widget.lineHeight,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        hiddenText = !hiddenText;
                      },
                    );
                  },
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Text12(
                          text: hiddenText ? 'Show more' : 'Show less',
                          textColor: AppColors.primaryColor.withOpacity(0.7),
                          height: widget.lineHeight,
                        ),
                        Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: AppColors.primaryColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
