import 'package:flutter/material.dart';

class LoginTaleBTN extends StatelessWidget {
  const LoginTaleBTN(
      {super.key, required this.Imagepath, required this.icontap});
  final String Imagepath;
  final Function() icontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: icontap,
      child: Container(
        foregroundDecoration:
            BoxDecoration(border: Border.all(width: 5, color: Colors.green)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.grey[600]),
        child: Image.asset(
          Imagepath,
          height: 40,
        ),
      ),
    );
  }
}
