import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_button.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/signin/signin_controller.dart';
import 'package:nationalquiz/ui/views/signin/signin_view.dart';
import 'package:nationalquiz/ui/views/signup/signup_controller.dart';

import '../../../app/my_app.dart';
import '../../../core/translation/app_translation.dart';
import '../../shared/colors.dart';
import '../../shared/custom_widgets/custom-text.dart';
import '../../shared/custom_widgets/custom_text_field.dart';
import '../../shared/custom_widgets/space_between.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  Signupcontroller controller = Signupcontroller();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Text_wedget(
                  text: "انشاء حساب",
                  fontsize: screenWidth(20),
                ),
                SvgPicture.asset("images/signup.svg"),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: screenWidth(1.60)),
                  child: Text_wedget(
                    text: "اسم المستخدم",
                  ),
                ),
                CustomTextField(
                  prefixIcon: SvgPicture.asset(
                    "images/ic_user.svg",
                    color: AppColors.mainGreyColor.withOpacity(0.5),
                  ),
                  hitText: "اسم المستخدم",
                  controller: controller.username,
                  fillColor: AppColors.mainGreyColor.withOpacity(0.04),
                  validator: (value) {
                    if (value!.isEmpty || !GetUtils.isEmail(value)) {
                      return 'الرجاء التحقق من اسم المستخدم';
                    }
                  },
                ),
                SpaceBetween(40),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: screenWidth(1.40)),
                  child: Text_wedget(text: "رقم الموبايل"),
                ),
                CustomTextField(
                  prefixIcon: SvgPicture.asset(
                    "images/ic_telephone.svg",
                    color: AppColors.mainGreyColor.withOpacity(0.5),
                  ),
                  hitText: "رقم الموبايل",
                  controller: controller.phonenumber,
                  fillColor: AppColors.mainGreyColor.withOpacity(0.04),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء التحقق من رقم الموبايل';
                    }
                  },
                ),
                SpaceBetween(40),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: screenWidth(1.40)),
                  child: Text_wedget(text: "اختر الاختصاص"),
                ),
                CustomButton(
                  text: "تسجيل الدخول",
                  onPressed: () {
                    controller.Signup();
                  },
                ),
                SpaceBetween(40),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: screenWidth(5)),
                  child: Row(children: [
                    Text_wedget(text: " لديك حساب ؟"),
                    InkWell(
                      onTap: () {
                        Get.to(() => SigninView());
                      },
                      child: Text_wedget(
                        text: "تسجيل الدخول",
                        textcolor: AppColors.mainPurpleColor,
                      ),
                    )
                  ]),
                ),
              ],
            )),
      ),
    ));
  }
}
