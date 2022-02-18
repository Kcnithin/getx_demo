import 'package:d4media/common_widgets/button.dart';
import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButtonWidget extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  late final String text;

  LoginButtonWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: MyButton(
          buttonText: text,
          buttonAction: () {
            loginController.login();
            /*if (loginController.formKey.currentState!.validate()) {
              loginController.login();
            }*/
          }),
    );
  }
}
