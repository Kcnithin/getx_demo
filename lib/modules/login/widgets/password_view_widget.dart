import 'package:d4media/common_widgets/textfield.dart';
import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordViewWidget extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: loginController.passwordTextController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      validator: 'Please Enter Your Password',
      hint: "Password",
      obscureText: true,
    );
  }
}
