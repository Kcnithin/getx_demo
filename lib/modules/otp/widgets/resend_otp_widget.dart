import 'package:d4media/common_snackbar/my_snackbar.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:d4media/modules/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResendOtpWidget extends StatelessWidget {
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  final OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.symmetric(horizontal: 90.0),
      child: TextButton(
          onPressed: () => MySnackBar.showSnackBar(
              "Success", "resend OTP is ${otpController.otp}"),
          child: const Text(
            "Resend OTP",
            style: TextStyle(
                color: Color(0xFF032D9C),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
    );
  }
}
