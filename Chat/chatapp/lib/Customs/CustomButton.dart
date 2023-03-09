import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required this.ButtonName});
  String ButtonName;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          ButtonName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
