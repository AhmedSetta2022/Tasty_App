import 'package:flutter/foundation.dart';

class Item {
  final String? Image;
  final String JPName;
  final String ENName;
  final String audio;
  const Item(
      {@required this.Image,
      required this.JPName,
      required this.ENName,
      required this.audio});
}
