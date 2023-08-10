import 'package:flutter/material.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/utils.dart';

class CustomTextField extends StatefulWidget {
  final String hitText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  const CustomTextField({
    Key? key,
    required this.hitText,
    required this.controller,
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TextFormField(
      style: TextStyle(
          fontSize: size.width * 0.035,
          fontWeight: FontWeight.normal,
          color: AppColors.mainGreyColor),
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          contentPadding: EdgeInsetsDirectional.only(
              start: screenWidth(30), end: screenWidth(30)),
          hintText: widget.hitText,
          filled: true,
          fillColor: AppColors.lightBlueColor.withOpacity(0.4),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(screenHeight(200)),
              borderSide: BorderSide.none)),
      //  validator: (value) => validator != null ? validator!(value!) : null,
    );
  }
}
