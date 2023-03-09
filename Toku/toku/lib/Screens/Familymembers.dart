import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/Models/Number.dart';
import '../Comp.dart/Item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);

  final List<Item> Family = const [
    Item(
        audio: 'father.wav',
        Image: 'assets/images/family_members/family_father.png',
        JPName: "Chichioya",
        ENName: "Father"),
    Item(
        audio: 'mother.wav',
        Image: 'assets/images/family_members/family_mother.png',
        JPName: "Hahaoya",
        ENName: "Mother"),
    Item(
        audio: 'son.wav',
        Image: 'assets/images/family_members/family_son.png',
        JPName: "Musuko",
        ENName: "Son"),
    Item(
        audio: 'daughter.wav',
        Image: 'assets/images/family_members/family_daughter.png',
        JPName: "Musume",
        ENName: "Daughter"),
    Item(
        audio: 'grand father.wav',
        Image: 'assets/images/family_members/family_grandfather.png',
        JPName: "Ojīsan",
        ENName: "GrandFather"),
    Item(
        audio: 'grand mother.wav',
        Image: 'assets/images/family_members/family_grandmother.png',
        JPName: "Sobo",
        ENName: "GrandMother"),
    Item(
        audio: 'older bother.wav',
        Image: 'assets/images/family_members/family_older_brother.png',
        JPName: "Nīsan",
        ENName: "OlderBrother"),
    Item(
        audio: 'older sister.wav',
        Image: 'assets/images/family_members/family_older_sister.png',
        JPName: "Onēsan",
        ENName: "OlderSister"),
    Item(
        audio: 'younger brohter.wav',
        Image: 'assets/images/family_members/family_younger_brother.png',
        JPName: "Otōto",
        ENName: "YoungerBrother"),
    Item(
        audio: 'younger sister.wav',
        Image: 'assets/images/family_members/family_younger_sister.png',
        JPName: "Imōto",
        ENName: "YoungerSister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FamilyMembers",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: Family.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: Family[index],
            color: Color.fromARGB(255, 19, 211, 25),
            Datasound: 'family_members',
          );
        },
      ),
    );
  }
}
