import 'package:d4media/common_widgets/icon.dart';
import 'package:d4media/common_widgets/tittle_text.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:d4media/modules/forgotPassword/widgets/mobile_number_widget.dart';
import 'package:d4media/modules/forgotPassword/widgets/submit_button_widget.dart';
import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:d4media/modules/login/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                MyIcon(
                    icon: Icons.arrow_back,
                    iconAction: () async {
                      await Future.delayed(Duration(seconds: 1));
                      Get.to(() => LoginScreen());
                    },
                    color: const Color(0xFF032D9C)),
                const SizedBox(height: 130),
                Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TittleText(tittle: "Forgot Password?"),
                      const SizedBox(height: 50),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          child: Form(
                               key: forgotPasswordController.fPFormKey,
                            child: Column(
                              children: <Widget>[
                                FGMobileNumberWidget(),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SubmitButtonWidget(text: "SUBMIT")
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
