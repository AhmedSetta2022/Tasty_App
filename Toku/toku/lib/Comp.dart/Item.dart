import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Models/Number.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.Datasound,
      required this.number,
      required this.color});
  final Item number;
  final Color color;
  final String Datasound;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF3DC),
            child: Image.asset(
              number.Image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.JPName,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  number.ENName,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(
                  onPressed: () {
                    AudioCache audio =
                        AudioCache(prefix: 'assets/sounds/$Datasound/');
                    audio.play(number.audio);
                  },
                  icon: Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                    size: 30,
                  ))),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {super.key,
      required this.Datasound,
      required this.number,
      required this.color});
  final Item number;
  final Color color;
  final String Datasound;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.JPName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    number.ENName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(
                  onPressed: () {
                    AudioCache audio =
                        AudioCache(prefix: 'assets/sounds/$Datasound/');
                    audio.play(number.audio);
                  },
                  icon: Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                    size: 30,
                  ))),
        ],
      ),
    );
  }
}
