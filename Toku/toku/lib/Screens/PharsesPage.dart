import 'package:flutter/material.dart';
import 'package:toku/Comp.dart/Item.dart';

import '../Models/Number.dart';

class Pharses_Page extends StatelessWidget {
  const Pharses_Page({super.key});
  final List<Item> ColorList = const [
    Item(
        JPName: "Kimasu ka",
        ENName: "Are you coming",
        audio: 'are_you_coming.wav'),
    Item(
        JPName: "Hai, watashi wa kite imasu",
        ENName: "Yes iam coming",
        audio: 'yes_im_coming.wav'),
    Item(
        JPName: "Kibun wa dōdesu ka!",
        ENName: "How are your feeling !",
        audio: 'how_are_you_feeling.wav'),
    Item(
        JPName: "Watashi wa anime ga daisukidesu",
        ENName: "I Love anime",
        audio: 'i_love_anime.wav'),
    Item(
        JPName: "Watashi wa puroguramingu ga daisukidesu",
        ENName: "I Love Programming",
        audio: 'i_love_programming.wav'),
    Item(
        JPName: "Puroguramingu wa kantandesu",
        ENName: "Programing is easy",
        audio: 'programming_is_easy.wav'),
    Item(
        JPName: "no namae wa nandesuka",
        ENName: "Whats Your Name ?",
        audio: 'what_is_your_name.wav'),
    Item(
        JPName: "Doko ni iku no?",
        ENName: "Where are u going ?",
        audio: 'where_are_you_going.wav'),
    Item(
        JPName: "Kōdoku suru koto o wasurenaide kudasai!",
        ENName: "Dont Forget to Subscribe !",
        audio: "dont_forget_to_subscribe.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phrases",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: ColorList.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            number: ColorList[index],
            color: Color(0xff864CAF),
            Datasound: 'phrases',
          );
        },
      ),
    );
  }
}
