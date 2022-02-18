import 'package:d4media/modules/signup/views/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpSectionWidget extends StatelessWidget {
  const SignUpSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        TextButton(
            onPressed: () {
              Get.to(() => RegistrationScreen());
            },
            child: const Text(
              "Signup",
              style: TextStyle(
                  color: Color(0xFF032D9C),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF032D9C)),
            ))
      ],
    );
  }
}
