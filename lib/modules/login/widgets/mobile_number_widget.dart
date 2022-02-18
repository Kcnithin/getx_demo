import 'package:d4media/common_widgets/textfield.dart';
import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileNumberWidget extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: loginController.mobileNumberController,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      validator: 'Please Enter Your Mobile Number',
      hint: 'Enter your mobile number',
    );
  }
}
