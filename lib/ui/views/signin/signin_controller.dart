import 'package:flutter/material.dart';
import 'package:nationalquiz/core/services/base_controller.dart';

class SigninController extends BaseController{
  TextEditingController username =TextEditingController();
      TextEditingController password  = TextEditingController();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();

void login() {
    formKey.currentState!.validate();
  }




}