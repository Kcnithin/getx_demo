import 'package:d4media/common_snackbar/my_snackbar.dart';
import 'package:d4media/modules/otp/controllers/otp_controller.dart';
import 'package:d4media/modules/otp/views/otp_screen.dart';
import 'package:d4media/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController numberController;
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final registerFormKey = GlobalKey<FormState>();

  final OtpController otpController = Get.put(OtpController());

  @override
  void onInit() {
    numberController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  void signup() async {
    if (nameController.text.isEmpty) {
      MySnackBar.errorSnackBar("Failed", Constants.nameNullError);
    } else if (numberController.text.isEmpty) {
      MySnackBar.errorSnackBar("Failed", Constants.numberNullError);
    } else if (numberController.text.length < 10) {
      MySnackBar.errorSnackBar("Failed", Constants.errorNumber);
    } else if (numberController.text.length > 10) {
      MySnackBar.errorSnackBar("Failed", Constants.errorNumber);
    } else if (passwordController.text.length < 5) {
      MySnackBar.errorSnackBar("Failed", Constants.errorPassword);
    } else if (confirmPasswordController.text != passwordController.text) {
      MySnackBar.errorSnackBar("Failed", Constants.matchPasswordError);
    } else {
      MySnackBar.showSnackBar("Success",
          "OTP sent to ${numberController.text} is ${otpController.otp}");
      Get.to(() => OtpScreen());
    }
  }
}
