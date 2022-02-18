import 'dart:async';

import 'package:d4media/common_snackbar/my_snackbar.dart';
import 'package:d4media/modules/home/views/home_screen.dart';
import 'package:d4media/utils/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpController extends GetxController {
  StreamController<ErrorAnimationType>? errorController;
  late TextEditingController otpNumberController = TextEditingController();

  final formKeyOtp = GlobalKey<FormState>();

  String currentText = "";
  String otp = "1234";
  int length = 4;

  @override
  void onInit() {
    errorController = StreamController<ErrorAnimationType>();
    otpNumberController = TextEditingController();
    super.onInit();
  }

  void verifyOtp() async {
    if (currentText.length != length || currentText != otp) {
      errorController!.add(ErrorAnimationType.shake);
      MySnackBar.errorSnackBar(
          "Failed", Constants.errorOTP); // Triggering error shake animation
    } else {
      MySnackBar.showSnackBar("Success", Constants.verifiedOTP);
      Get.off(HomeScreen());
    }
  }

  @override
  void dispose() {
    errorController?.close();
    otpNumberController.dispose();
  }
}
