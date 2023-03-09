import 'package:flutter/material.dart';
import 'package:love_story/Fargmantes/photodirector.dart';

class PhotoPage extends StatelessWidget {
  PhotoPage({
    super.key,
  });
  final List<String> photopick = const [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "11.jpg",
    "12.jpg",
    "13.jpg",
    "14.jpg",
    "15.jpg",
    "16.jpg",
    "17.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff7F7B7C),
          title: Text(
            "Makes Soul Happy:-)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Pacifico'),
          ),
        ),
        body: ListView.builder(
            itemCount: photopick.length,
            itemBuilder: (context, index) {
              return PhotoCato(
                photopicker: photopick[index],
              );
            }));
  }
}
