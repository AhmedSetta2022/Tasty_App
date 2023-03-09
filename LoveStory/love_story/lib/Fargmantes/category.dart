import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.TextData, required this.containercolor});
  final String TextData;
  final Color containercolor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            color: containercolor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          TextData,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ));
  }
}
