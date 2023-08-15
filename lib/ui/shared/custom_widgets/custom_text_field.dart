import 'package:flutter/material.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  final String hitText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color fillColor;
  final Color? hintStyleColor;
  const CustomTextField({

    Key? key,
    required this.hitText,
    required this.controller,
    this.validator,
    this.prefixIcon,
     this.suffixIcon, required this.fillColor,  this.hintStyleColor,
  })
   : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: screenWidth(100),
          end: screenWidth(100),
          bottom: screenWidth(30),
          top:screenWidth(30) ),
      child: TextFormField(
        
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
           suffixIcon:suffixIcon ,

          
       
            contentPadding: EdgeInsets.symmetric(
                horizontal: screenWidth(20), vertical: screenWidth(30)),
            hintText: hitText ,
            hintStyle: TextStyle(color:hintStyleColor??AppColors.mainGreyColor.withOpacity(0.5)),

            filled: true,
            fillColor: fillColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
        //  validator: (value) => validator != null ? validator!(value!) : null,
      ),
    );
  }
}
