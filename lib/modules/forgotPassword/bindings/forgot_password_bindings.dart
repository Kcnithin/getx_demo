import 'package:d4media/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
