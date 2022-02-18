import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  late final IconData icon;
  late final Color color;
  late final void Function() iconAction;

  MyIcon({required this.icon, required this.iconAction, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: IconButton(
            onPressed: iconAction,
            icon: Icon(
              icon,
              color: color,
            )),
      ),
    );
  }
}
