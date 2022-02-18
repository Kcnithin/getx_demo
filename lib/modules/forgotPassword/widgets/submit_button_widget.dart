import 'package:d4media/common_widgets/button.dart';
import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubmitButtonWidget extends StatelessWidget {
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  late final String text;

  SubmitButtonWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: MyButton(
          buttonText: text,
          buttonAction: () {
            forgotPasswordController.submit();
            /*if (forgotPasswordController.formKey.currentState!.validate()) {
              forgotPasswordController.submit();
            }*/
          }),
    );
  }
}
