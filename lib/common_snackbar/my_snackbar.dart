import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar {
  static void errorSnackBar(String title, String message) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16));
  }

  static void showSnackBar(String title, String message) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black26,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16));
  }
}
