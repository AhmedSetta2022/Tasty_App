import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:love_story/Fargmantes/Item.dart';

import 'package:flutter/foundation.dart';

class mysoundcato extends StatelessWidget {
  mysoundcato({
    super.key,
    required this.Datasound,
    required this.number,
  });
  final Item number;
  final String Datasound;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: IconButton(
              onPressed: () {
                AudioCache audio =
                    AudioCache(prefix: 'assets/Sounds/$Datasound/');
                audio.play(number.audio);
              },
              icon: Icon(
                Icons.volume_up_outlined,
                color: Colors.black,
                size: 30,
              ))),
    );
  }
}
