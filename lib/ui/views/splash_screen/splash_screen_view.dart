import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_button.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/splash_screen/splash_screen_controlar.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  // splashScreenControlar controlar =Get.put(splashScreenControlar());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [CustomButton(text: 'Login', onPressed: () {})],
    )));
  }
}
