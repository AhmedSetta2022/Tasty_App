import 'package:flutter/material.dart';
import 'package:love_story/Fargmantes/category.dart';
import 'package:love_story/Screens/Photos.dart';
import 'package:love_story/Screens/Phrases.dart';
import 'package:love_story/Screens/Sounds.dart';
import 'package:love_story/Screens/Videos.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image of scafold.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text(
              'My Love Story',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VideosPage();
                  }));
                },
                child: Category(
                  containercolor: Colors.red.withOpacity(.2),
                  TextData: "ما يراه قلبي",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SoundPage();
                  }));
                },
                child: Category(
                  containercolor: Color(0xff52381F).withOpacity(.2),
                  TextData: "ما تسمعه أذني",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PhrasesPage();
                  }));
                },
                child: Category(
                  containercolor: Colors.blueAccent.withOpacity(.2),
                  TextData: " ما تقرأه عيني",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PhotoPage();
                  }));
                },
                child: Category(
                  containercolor: Color(0xff7F7B7C).withOpacity(.2),
                  TextData: " ما تسر به روحي",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
