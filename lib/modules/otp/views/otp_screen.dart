import 'package:d4media/common_widgets/icon.dart';
import 'package:d4media/common_widgets/my_backPress.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:d4media/modules/otp/widgets/otp_pin_widget.dart';
import 'package:d4media/modules/otp/widgets/resend_otp_widget.dart';
import 'package:d4media/modules/otp/widgets/verify_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return MyBackPress(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {},
          child: ListView(
            children: <Widget>[
              MyIcon(
                  icon: Icons.arrow_back,
                  iconAction: () {
                    SystemNavigator.pop();
                  },
                  color: const Color(0xFF032D9C)),
              const SizedBox(height: 130),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'Verification Code',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 3),
                child: RichText(
                  text: const TextSpan(
                      text: "Enter Your OTP Code here",
                      style: TextStyle(color: Colors.black54, fontSize: 13)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              OtpPinWidget(),
              ResendOtpWidget(),
              VerifyButtonWidget(text: "VERIFY")
            ],
          ),
        ),
      ),
    );
  }
}
