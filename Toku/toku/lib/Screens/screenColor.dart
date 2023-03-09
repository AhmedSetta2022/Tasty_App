import 'package:flutter/material.dart';
import 'package:toku/Comp.dart/Item.dart';

import '../Models/Number.dart';

class ScreenColor extends StatelessWidget {
  const ScreenColor({super.key});
  final List<Item> ColorList = const [
    Item(
        audio: 'black.wav',
        Image: 'assets/images/colors/color_black.png',
        JPName: "Burakku",
        ENName: "Black"),
    Item(
        audio: 'brown.wav',
        Image: 'assets/images/colors/color_brown.png',
        JPName: "Chairo",
        ENName: "Brown"),
    Item(
        audio: 'dusty yellow.wav',
        Image: 'assets/images/colors/color_dusty_yellow.png',
        JPName: "Hokori ppoi kiiro",
        ENName: "Dusty Yellow"),
    Item(
        audio: 'gray.wav',
        Image: 'assets/images/colors/color_gray.png',
        JPName: "Gurē",
        ENName: "Gray"),
    Item(
        audio: 'green.wav',
        Image: 'assets/images/colors/color_green.png',
        JPName: "Midori",
        ENName: "Green"),
    Item(
        audio: 'red.wav',
        Image: 'assets/images/colors/color_red.png',
        JPName: "Aka",
        ENName: "Red"),
    Item(
        audio: 'white.wav',
        Image: 'assets/images/colors/color_white.png',
        JPName: "Shiroi",
        ENName: "white"),
    Item(
        audio: 'yellow.wav',
        Image: 'assets/images/colors/yellow.png',
        JPName: "Kiiro",
        ENName: "Yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: ColorList.length,
        itemBuilder: (context, num) {
          return ListItem(
            number: ColorList[num],
            color: Colors.teal,
            Datasound: 'colors',
          );
        },
      ),
    );
  }
}
