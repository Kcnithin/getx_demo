import 'package:flutter/material.dart';

class TittleText extends StatelessWidget {
  late final String tittle;

  TittleText({required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35),
      child: Text(
        tittle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
