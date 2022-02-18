import 'dart:async';

import 'package:d4media/generated/assets.dart';
import 'package:d4media/modules/login/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset(Assets.assetsD4Media),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  gotoLogin() async {
    await Future.delayed(const Duration(seconds: 6));
    Get.off(() => LoginScreen());
  }
}
