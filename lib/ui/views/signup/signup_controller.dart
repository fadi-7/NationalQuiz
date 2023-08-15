import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/core/data/repositories/user_repository.dart';
import 'package:nationalquiz/core/enums/message_type.dart';
import 'package:nationalquiz/core/services/base_controller.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom_toast.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/MainView.dart';

class Signupcontroller extends BaseController {
  TextEditingController username = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void Signup() {
    String userName = username.text;
    String mobilePhone = phonenumber.text;
    String specializationId = 1.toString();

    if (formKey.currentState!.validate()) {
      runFullLoadingFunction(
          function: UserRepository()
              .register(
                  name: userName,
                  mobile_phone: mobilePhone,
                  specialization_id: specializationId)
              .then((value) {
        value.fold((l) {
          CustomToast.showMeassge(
              message: l, messageType: MessageType.REJECTED);
        }, (r) {
          storage.setLoggedIN(true);

          Get.off(MainView(), transition: Transition.cupertino);
        });
      }));
    }
  }
}
