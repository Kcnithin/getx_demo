import 'package:d4media/common_snackbar/my_snackbar.dart';
import 'package:d4media/modules/home/views/home_screen.dart';
import 'package:d4media/utils/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController mobileNumberController;
  late TextEditingController passwordTextController;
  String mobileNumber = "8281212017";
  String password = "qwerty";

  final loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    mobileNumberController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  void login() async {
    if (mobileNumberController.text == mobileNumber &&
        passwordTextController.text == password) {
      MySnackBar.showSnackBar("Success", "Successfully LoggedIn");
      Get.off(() => HomeScreen());
    } else if (mobileNumberController.text == mobileNumber &&
        passwordTextController.text.length < 5) {
      MySnackBar.errorSnackBar("Failed to login", Constants.errorPassword);
    } else if (mobileNumberController.text.length < 10) {
      MySnackBar.errorSnackBar("Failed to login", Constants.errorNumber);
    } else if (mobileNumberController.text.isEmpty) {
      MySnackBar.errorSnackBar("Failed to login", Constants.numberNullError);
    } else if (passwordTextController.text.isEmpty) {
      MySnackBar.errorSnackBar("Failed to login", Constants.passwordNullError);
    }
    if (mobileNumberController.text == mobileNumber &&
        passwordTextController.text != password) {
      MySnackBar.errorSnackBar("Failed to login", Constants.invalidUser);
    } else {
      MySnackBar.errorSnackBar(
          "Failed to login", Constants.emptyNumberAndPassword);
    }
  }
}
