import 'package:d4media/modules/forgotPassword/bindings/forgot_password_bindings.dart';
import 'package:d4media/modules/forgotPassword/views/forgot_password_screen.dart';
import 'package:d4media/modules/home/views/home_screen.dart';
import 'package:d4media/modules/login/bindings/login_bindings.dart';
import 'package:d4media/modules/login/views/login_screen.dart';
import 'package:d4media/modules/otp/bindings/otp_bindings.dart';
import 'package:d4media/modules/otp/views/otp_screen.dart';
import 'package:d4media/modules/signup/bindings/signup_bindings.dart';
import 'package:d4media/modules/signup/views/registration_screen.dart';
import 'package:d4media/modules/splash/views/splash_screen.dart';
import 'package:get/get.dart';

import 'app_route.dart';

class AppPages {
  static const initial = Routes.splashScreen;

  static final routes = [
    GetPage(name: Paths.splashScreen, page: () => const SplashScreen()),
    GetPage(
        name: Paths.signup,
        page: () => RegistrationScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: Paths.login, page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(
        name: Paths.forgotPassword,
        page: () => ForgotPasswordScreen(),
        binding: ForgotPasswordBinding()),
    GetPage(name: Paths.otp, page: () => OtpScreen(), binding: OtpBinding()),
    GetPage(
      name: Paths.home,
      page: () => HomeScreen(),
      //binding:
    ),
  ];
}
