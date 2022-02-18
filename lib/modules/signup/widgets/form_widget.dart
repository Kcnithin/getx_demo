import 'package:d4media/common_widgets/textfield.dart';
import 'package:d4media/modules/signup/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Form(
        key: registerController.registerFormKey,
        child: Column(
          children: <Widget>[
            MyTextField(
              controller: registerController.nameController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              validator: 'Please Enter Your Name',
              hint: 'Name',
            ),
            const SizedBox(height: 16),
            MyTextField(
              controller: registerController.numberController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: 'Please Enter Your Number',
              hint: "Phone Number",
            ),
            const SizedBox(height: 16),
            MyTextField(
              controller: registerController.passwordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              validator: 'Please Enter Your Password',
              hint: "Enter Your Password",
              obscureText: true,
            ),
            const SizedBox(height: 16),
            MyTextField(
              controller: registerController.confirmPasswordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              validator: 'Please Confirm Your Password',
              hint: "Confirm Password",
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
