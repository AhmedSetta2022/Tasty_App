import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/Screens/Familymembers.dart';
import 'package:toku/Screens/NumbersPage.dart';
import 'package:toku/Screens/PharsesPage.dart';
import 'package:toku/Screens/screenColor.dart';
import '../Comp.dart/Catoegry.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('assets/r.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text(
            "Toku",
            style: TextStyle(fontSize: 18, fontFamily: 'Pacifico'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catogery(
                Title: "Numbers",
                color: Colors.orange,
                OnTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return NumbersPage();
                  }));
                }),
              ),
              Catogery(
                OnTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return FamilyMembers();
                  }));
                }),
                Title: "FamilyMembers",
                color: Colors.green[400],
              ),
              Catogery(
                OnTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ScreenColor();
                  }));
                }),
                Title: "Colors",
                color: Colors.purple[300],
              ),
              Catogery(
                OnTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Pharses_Page();
                  }));
                }),
                Title: "Phrases",
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
