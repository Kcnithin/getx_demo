import 'package:d4media/common_snackbar/my_snackbar.dart';
import 'package:d4media/modules/otp/controllers/otp_controller.dart';
import 'package:d4media/modules/otp/views/otp_screen.dart';
import 'package:d4media/utils/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController forgotNumberController;
  final fPFormKey = GlobalKey<FormState>();

  final OtpController otpController = Get.put(OtpController());

  @override
  void onInit() {
    forgotNumberController = TextEditingController();
    super.onInit();
  }

  void submit() async {
    String currentValue = forgotNumberController.text;
    if (currentValue.length < 10) {
      MySnackBar.errorSnackBar("Failed", Constants.errorNumber);
    } else if (currentValue.length == 10) {
      MySnackBar.showSnackBar("Success",
          "OTP sent to ${forgotNumberController.text} is ${otpController.otp}");
      Get.to(() => OtpScreen());
    }
  }

  @override
  void onClose() {
    forgotNumberController.dispose();
    super.onClose();
  }
}
