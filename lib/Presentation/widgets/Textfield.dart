import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.ObSecureText,
    @required this.EyeIcon,
    required this.keyboardType,
    this.prefix,
    this.controller,
  });
  final String hintText;
  final bool ObSecureText;
  final IconButton? EyeIcon;
  final TextInputType keyboardType;
  final Icon? prefix;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return "This field is required";
          }
        },
        controller: controller,
        keyboardType: keyboardType,
        obscureText: ObSecureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12)),
            suffixIcon: EyeIcon,
            prefixIcon: prefix,
            suffixIconColor: Colors.deepPurple,
            prefixIconColor: Colors.deepPurple,
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey[500])),
      ),
    );
  }
}
