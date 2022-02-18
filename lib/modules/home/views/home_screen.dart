import 'package:d4media/common_widgets/my_backPress.dart';
import 'package:d4media/modules/login/controllers/login_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return MyBackPress(
      child: const Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Welcome'),
          ),
        ),
      ),
    );
  }
}
