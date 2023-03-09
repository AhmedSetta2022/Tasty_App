import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(MyLoveApp());
}

class MyLoveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
