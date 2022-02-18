import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class MyBackPress extends StatelessWidget {
  late final Widget child;
  DateTime backPress = DateTime.now();

  MyBackPress({required this.child});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: child,
        onWillPop: () async {
          final timegap = DateTime.now().difference(backPress);
          final cantExit = timegap >= const Duration(seconds: 2);
          backPress = DateTime.now();
          if (cantExit) {
            //show snackbar
            Get.snackbar('d4media', 'Press Back button again to Exit',
                duration: Duration(seconds: 2),
                snackPosition: SnackPosition.BOTTOM);
            return false;
          } else {
            SystemNavigator.pop();
            return true;
          }
        });
  }
}
