import 'package:flutter/material.dart';

class CustomTF extends StatelessWidget {
  CustomTF(
      {super.key,
      required this.controller,
      required this.labeltext,
      required this.keyboardtype,
      required this.Icon});
  final Icon;
  final labeltext;
  final controller;
  final keyboardtype;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        keyboardType: keyboardtype,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon,
            labelText: labeltext,
            labelStyle: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
            fillColor: Colors.grey[200],
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
