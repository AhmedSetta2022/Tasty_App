import 'package:chatapp/Constans.dart';
import 'package:chatapp/Modules/Messagae.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          padding: EdgeInsets.only(top: 32, bottom: 32, left: 32, right: 32),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: kprimarycolor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(32))),
          child: Text(message.messege,
              style: TextStyle(
                color: Colors.white,
              ))),
    );
  }
}

class Bubblefriendchat extends StatelessWidget {
  const Bubblefriendchat({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          padding: EdgeInsets.only(top: 32, bottom: 32, left: 32, right: 32),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: Color(0xff006389),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32))),
          child: Text(message.messege,
              style: TextStyle(
                color: Colors.white,
              ))),
    );
  }
}
