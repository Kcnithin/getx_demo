import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {


  late final void Function() buttonAction;
  late final String buttonText;

  MyButton({
    required this.buttonText,
    required this.buttonAction
});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: buttonAction,
      child: Text(buttonText),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
              )
          ),
          backgroundColor:
          MaterialStateProperty.all(const Color(0xFF032D9C)),
          padding:
          MaterialStateProperty.all(const EdgeInsets.all(12)),
          textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 17))),
    );
  }
}
