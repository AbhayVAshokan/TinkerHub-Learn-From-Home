import 'package:flutter/material.dart';

class AddItemTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final keyboardType;

  AddItemTextField(this.hintText, this.controller, this.keyboardType);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        controller: controller,
        keyboardType: keyboardType,
      ),
    );
  }
}
