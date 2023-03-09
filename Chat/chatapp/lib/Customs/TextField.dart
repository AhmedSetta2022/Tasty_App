import 'package:flutter/material.dart';

class CustomTF extends StatelessWidget {
  CustomTF({super.key, this.hinttext, this.OnChanged, this.obscure = false});
  String? hinttext;
  Function(String)? OnChanged;
  bool? obscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure!,
      onChanged: OnChanged,
      validator: (data) {
        if (data!.isEmpty) {
          return " This Field is Required";
        }
      },
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
    );
  }
}
