import 'package:d4media/modules/forgotPassword/views/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 20),
      trailing: TextButton(
        onPressed: () {
          Get.to(() => ForgotPasswordScreen());
        },
        child: const Text(
          "Forgot password",
          style: TextStyle(
            color: Color(0xFF032D9C),
          ),
        ),
      ),
    );
    ;
  }
}
