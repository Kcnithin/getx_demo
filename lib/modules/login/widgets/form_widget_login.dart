import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:d4media/modules/login/widgets/password_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mobile_number_widget.dart';

class FormLogin extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Form(
        key: loginController.loginFormKey,
        child: Column(
          children: <Widget>[
            MobileNumberWidget(),
            const SizedBox(height: 16),
            PasswordViewWidget(),
          ],
        ),
      ),
    );
  }
}
