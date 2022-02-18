import 'package:d4media/common_widgets/textfield.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FGMobileNumberWidget extends StatelessWidget {
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: forgotPasswordController.forgotNumberController,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      validator: 'Please Enter Your Mobile Number',
      hint: 'Enter your mobile number',
    );
  }
}
