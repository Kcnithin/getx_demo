import 'package:d4media/common_widgets/button.dart';
import 'package:d4media/modules/signup/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButtonWidget extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: MyButton(
          buttonText: "SEND OTP",
          buttonAction: () {
            registerController.signup();
            /*if (registerController.formKey.currentState!.validate()) {
              registerController.signup();
            }*/
          }),
    );
  }
}
