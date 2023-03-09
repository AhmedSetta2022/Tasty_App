import 'package:flutter/material.dart';
import '../Fargmantes/Item.dart';
import '../Fargmantes/Soundcato.dart';

class SoundPage extends StatelessWidget {
  SoundPage({
    super.key,
  });
  final List<Item> number = [
    Item(audio: "0.mp3"),
    Item(audio: "1.mp3"),
    Item(audio: "2.mp3"),
    Item(audio: "3.mp3"),
    Item(audio: "4.mp3"),
    Item(audio: "5.mp3"),
    Item(audio: "6.mp3"),
    Item(audio: "8.mp3"),
    Item(audio: "9.mp3"),
    Item(audio: "10.mp3"),
    Item(audio: "11.mp3"),
    Item(audio: "12.mp3"),
    Item(audio: "13.mp3"),
    Item(audio: "14.mp3"),
    Item(audio: "15.mp3"),
    Item(audio: "16.mp3"),
    Item(audio: "17.mp3"),
    Item(audio: "18.mp3"),
    Item(audio: "19.mp3"),
    Item(audio: "20.mp3"),
    Item(audio: "21.mp3"),
    Item(audio: "22.mp3"),
    Item(audio: "23.mp3"),
    Item(audio: "24.mp3"),
    Item(audio: "25.mp3"),
    Item(audio: "26.mp3"),
    Item(audio: "27.mp3"),
    Item(audio: "28.mp3"),
    Item(audio: "29.mp3"),
    Item(audio: "30.mp3"),
    Item(audio: "31.mp3"),
    Item(audio: "32.mp3"),
    Item(audio: "33.mp3"),
    Item(audio: "34.mp3"),
    Item(audio: "35.mp3"),
    Item(audio: "36.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff52381F),
        title: Text(
          "What Ears Listen:-)",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Pacifico'),
        ),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return mysoundcato(
              Datasound: 'SoundFiles',
              number: number[index],
            );
          }),
    );
  }
}
