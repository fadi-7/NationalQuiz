import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/ui/views/signup/signup_view.dart';
import '../../../core/services/base_controller.dart';
import '../../shared/utils.dart';

class LoginController extends BaseController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void login() {
    if (formKey.currentState!.validate()) {
      Get.off(SignUpView(), transition: Transition.cupertino);
    }
  }
}
