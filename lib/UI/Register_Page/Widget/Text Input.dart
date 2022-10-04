import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String hintText;
  String error;
  TextEditingController controller;

  TextInput(
      {required this.hintText, required this.error, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(right: 5, left: 15, top: 4, bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        controller: controller,
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return 'Please Enter Your ${error}';
          }
          if (text.length < 10) {
            return 'Please Enter Right ${error}';
          }
          return null;
        },
        textAlign: TextAlign.left,
        maxLines: 1,
        minLines: 1,
        scrollPhysics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintStyle: TextStyle(
            fontSize: 17,
            color: Color(0XFFC4C4C4),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
