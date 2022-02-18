import 'package:d4media/generated/assets.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: ListTile(
          leading: Image.asset(
        Assets.assetsD4Media,
        height: 75,
        width: 75,
      )),
    );
  }
}
