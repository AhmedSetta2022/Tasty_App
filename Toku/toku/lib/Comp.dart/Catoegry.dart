import 'package:flutter/material.dart';

class Catogery extends StatelessWidget {
  Color? color;
  String? Title;
  VoidCallback? OnTap;
  Catogery({this.Title, this.color, this.OnTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child: Text(
          Title!,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
