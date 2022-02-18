import 'package:d4media/common_widgets/button.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:d4media/modules/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class VerifyButtonWidget extends StatelessWidget {
  final OtpController otpController = Get.put(OtpController());
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());

  late final String text;

  VerifyButtonWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
      child: MyButton(
          buttonText: text,
          buttonAction: () {
            otpController.verifyOtp();
            /*if (otpController.formKey.currentState!.validate()) {
              otpController.verifyOtp();
            }*/
          }),
    );
  }
}
