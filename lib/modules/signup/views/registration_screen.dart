import 'package:d4media/common_widgets/logo_widget.dart';
import 'package:d4media/common_widgets/tittle_text.dart';
import 'package:d4media/modules/signup/widgets/form_widget.dart';
import 'package:d4media/modules/signup/widgets/signup_button_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const LogoWidget(),
            const SizedBox(height: 50),
            TittleText(tittle: "Registration"),
            const SizedBox(height: 40),
            FormWidget(),
            const SizedBox(height: 16),
            SignUpButtonWidget()
          ],
        ),
      ),
    );
  }
}
