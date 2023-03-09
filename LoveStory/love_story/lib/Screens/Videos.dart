import 'package:flutter/material.dart';
import 'package:love_story/Fargmantes/Models.dart';
import 'package:video_player/video_player.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            "What TheHeart Seen :-)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Pacifico'),
          ),
        ),
        body: VideoPlayersList());
  }
}
