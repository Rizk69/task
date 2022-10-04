import 'dart:ffi';

import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  Color color;
  String namedButtom;
  VoidCallback callBack;

  Buttoms(
      {required this.color, required this.namedButtom, required this.callBack});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
        ),
        onPressed: callBack,
        child: Text(
          namedButtom,
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ));
  }
}
