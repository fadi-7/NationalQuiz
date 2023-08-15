import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom-text.dart';

import '../../shared/custom_widgets/custom_button.dart';
import '../../shared/custom_widgets/custom_text_field.dart';
import 'login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SvgPicture.asset(
                  'images/Login.svg',
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 275),
                  child: CustomText(
                    text: 'اسم المستخدم',
                  ),
                ),
                CustomTextField(
                  controller: controller.emailController,
                  hitText: 'اسم المستخدم',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'تحقق من الايميل';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 295, top: 50),
                  child: CustomText(
                    text: 'رمز الدخول',
                  ),
                ),
                CustomTextField(
                  controller: controller.passwordController,
                  hitText: 'رمز الدخول',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'تحقق من رمز الدخول';
                    }
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: CustomButton(
                    onPressed: () {
                      controller.login();
                    },
                    text: 'تسجيل الدخول',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'ليس لديك حساب؟',
                      textColor: AppColors.mainBlackColor,
                    ),
                    CustomText(
                      text: 'أنشا حسابك الان',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    'المتابعة كزائر',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.mainBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
