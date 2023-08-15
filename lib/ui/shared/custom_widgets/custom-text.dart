import 'package:flutter/material.dart';
import 'package:nationalquiz/ui/shared/utils.dart';

class Text_wedget extends StatelessWidget {
  const Text_wedget(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontsize,
      this.fontWeight,
      this.decoration,
      this.decorationThickness,
      this.fontFamily});
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: fontsize ?? screenWidth(23),
        fontWeight: fontWeight,
        decoration: decoration,
        decorationThickness: decorationThickness,
      ),
    );
  }
}
