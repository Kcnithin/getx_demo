import 'package:d4media/common_widgets/logo_widget.dart';
import 'package:d4media/common_widgets/my_backPress.dart';
import 'package:d4media/common_widgets/tittle_text.dart';
import 'package:d4media/modules/login/widgets/forgot_password_text_widget.dart';
import 'package:d4media/modules/login/widgets/form_widget_login.dart';
import 'package:d4media/modules/login/widgets/login_button_widget.dart';
import 'package:d4media/modules/login/widgets/signup_section_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyBackPress(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/himalaya.png"),
                    opacity: 200,
                    alignment: Alignment.bottomCenter)),
            child: ListView(
              children: [
                const LogoWidget(),
                const SizedBox(height: 50),
                TittleText(tittle: "Login"),
                const SizedBox(height: 40),
                FormLogin(),
                const ForgotPasswordWidget(),
                LoginButtonWidget(text: "CONTINUE"),
                const SignUpSectionWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
