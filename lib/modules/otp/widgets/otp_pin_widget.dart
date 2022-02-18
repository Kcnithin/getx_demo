import 'package:d4media/modules/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPinWidget extends StatelessWidget {
  final OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Form(
        key: otpController.formKeyOtp,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            obscureText: true,
            obscuringCharacter: '*',
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              selectedColor: Colors.white,
              selectedFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              errorBorderColor: Colors.red,
              borderWidth: 1,
              fieldHeight: 50,
              fieldWidth: 50,
              activeFillColor: Colors.white,
            ),
            cursorColor: Colors.black,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            errorAnimationController: otpController.errorController,
            controller: otpController.otpNumberController,
            keyboardType: TextInputType.number,
            boxShadows: const [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onChanged: (value) {
              otpController.currentText = value;
            },
          )),
    );
  }
}
