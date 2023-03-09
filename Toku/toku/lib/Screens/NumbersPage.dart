import 'package:flutter/material.dart';
import 'package:toku/Comp.dart/Item.dart';

import '../Models/Number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> number = const [
    Item(
        audio: 'number_one_sound.mp3',
        Image: 'assets/images/numbers/number_one.png',
        JPName: "ichi",
        ENName: "One"),
    Item(
        audio: 'number_two_sound.mp3',
        Image: 'assets/images/numbers/number_two.png',
        JPName: "Ni",
        ENName: "Two"),
    Item(
        audio: 'number_three_sound.mp3',
        Image: 'assets/images/numbers/number_three.png',
        JPName: "San",
        ENName: "Three"),
    Item(
        audio: 'number_four_sound.mp3',
        Image: 'assets/images/numbers/number_four.png',
        JPName: "Shi",
        ENName: "Four"),
    Item(
        audio: 'number_five_sound.mp3',
        Image: 'assets/images/numbers/number_five.png',
        JPName: "Itsutsu",
        ENName: "Five"),
    Item(
        audio: 'number_six_sound.mp3',
        Image: 'assets/images/numbers/number_six.png',
        JPName: "Roku",
        ENName: "Six"),
    Item(
        audio: 'number_seven_sound.mp3',
        Image: 'assets/images/numbers/number_seven.png',
        JPName: "Sebun",
        ENName: "Seven"),
    Item(
        audio: 'number_eight_sound.mp3',
        Image: 'assets/images/numbers/number_eight.png',
        JPName: "Hachi",
        ENName: "Eight"),
    Item(
        audio: 'number_nine_sound.mp3',
        Image: 'assets/images/numbers/number_nine.png',
        JPName: "Kyū",
        ENName: "Nine"),
    Item(
        audio: 'number_ten_sound.mp3',
        Image: 'assets/images/numbers/number_ten.png',
        JPName: "Jū",
        ENName: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Numbers",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, num) {
          return ListItem(
            number: number[num],
            color: Color(0xffFA9530),
            Datasound: 'numbers',
          );
        },
      ),
    );
  }
}
