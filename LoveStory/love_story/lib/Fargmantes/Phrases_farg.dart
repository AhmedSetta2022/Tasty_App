import 'package:flutter/material.dart';

class PhrasesCato extends StatelessWidget {
  const PhrasesCato({super.key, required this.textpick});
  final String textpick;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        width: 200,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.green[600], borderRadius: BorderRadius.circular(20)),
        child: Text(
          textpick,
          maxLines: 18,
          overflow: TextOverflow.clip,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
