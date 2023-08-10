import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderColor,
      this.textColor,
      this.backgroundColor,
      this.textFontWeight,
      this.textSize,
      this.svgName,
      required this.onPressed});
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final Color? backgroundColor;
  final FontWeight? textFontWeight;
  final double? textSize;
  final String? svgName;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            side: borderColor != null
                ? BorderSide(
                    width: 1, color: borderColor ?? AppColors.mainPurpleColor)
                : null,
            backgroundColor: backgroundColor ?? AppColors.mainPurpleColor,
            fixedSize: Size(screenWidth(1), screenHeight(16))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgName != null) ...[
              SvgPicture.asset('images/$svgName.svg'),
              SizedBox(
                width: screenWidth(50),
              )
            ],
            Text(
              text,
              style: TextStyle(
                color: textColor ?? AppColors.mainWhiteColor,
                fontSize: textSize ?? screenWidth(28.5),
                fontWeight: textFontWeight ?? FontWeight.normal,
              ),
            ),
          ],
        ));
  }
}



//CustomButton