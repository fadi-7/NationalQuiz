import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_button.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/main/main_view.dart';
import 'package:nationalquiz/ui/views/signin/signin_controller.dart';

import '../../../app/my_app.dart';
import '../../../core/translation/app_translation.dart';
import '../../shared/colors.dart';
import '../../shared/custom_widgets/custom-text.dart';
import '../../shared/custom_widgets/custom_text_field.dart';
import '../../shared/custom_widgets/space_between.dart';
import '../main/home_view.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  SigninController controller = SigninController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsetsDirectional.only(start: screenWidth(30), end: screenWidth(30)),
          child: Form(
              key: controller.formKey,
            child: Column(children: [
              SpaceBetween(40),
              Text_wedget(text: "تسجيل الدخول"),
              SpaceBetween(20),
              SizedBox(child: SvgPicture.asset("images/Login.svg")),
              SpaceBetween(40),
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
                child: Text_wedget(text: "رمز الدخول"),
              ),
              CustomTextField(
                prefixIcon: SvgPicture.asset(
                  "images/ic_password.svg",
                  
                  color: AppColors.mainGreyColor.withOpacity(0.5),
                ),
                hitText: "رمز الدخول",
                controller: controller.username,
                fillColor: AppColors.mainGreyColor.withOpacity(0.04),
                 validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء التحقق من رمز الدخول';
                    }
                  },
              ),
              SpaceBetween(40),
              CustomButton(text: "تسجيل الدخول", onPressed: () {
                    controller.login();
               
                  },),
              SpaceBetween(50),
              Padding(
                padding: EdgeInsetsDirectional.only(start: screenWidth(6)),
                child: Row(children: [
                  Text_wedget(text: "ليس لديك حساب ؟"),
                  Text_wedget(
                    text: "أنشأ حسابك الان",
                    textcolor: AppColors.mainPurpleColor,
                  )
                ]),
              ),
              SpaceBetween(10),
              InkWell(
                    onTap:(){ Get.to(()=> HomeView());},
                    child:Text_wedget(
                text: "المتابعة كزائر",
                textcolor: AppColors.thirdPurpleColor,
                decoration: TextDecoration.underline,
              )
                  )
              // Text_wedget(
              //   text: "المتابعة كزائر",
              //   textcolor: AppColors.thirdPurpleColor,
              //   decoration: TextDecoration.underline,
              // )
            ]),
          ),
        ),
      ),
    ));
  }
}
