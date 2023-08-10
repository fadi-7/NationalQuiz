import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom-text.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_button.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/splash_screen/splash_screen_controlar.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.all(screenWidth(77)),
      child: Column(
        children: [
          CustomButton(text: 'Login', onPressed: () {}),
          CustomTextField(
              prefixIcon: Icon(Icons.verified_user),
              hitText: 'hitText',
              controller: controller.emailController),
          CustomText(text: 'text')
        ],
      ),
    )));
  }
}
