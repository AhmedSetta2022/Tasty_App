import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/views/Favoirte.dart';
import 'package:tasty_app/Presentation/views/HomePage.dart';
import 'package:tasty_app/Presentation/views/settings.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});
  static String ID = "HomeState";

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _page = 0;
  void NavigationSelected(int index) {
    setState(() {
      _page = index;
    });
  }

  final List<Widget> screens = const [
    HomePage(),
    FavoirtePage(),
    SettingsPage(),
  ];
  final Items = const <Widget>[
    Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.favorite,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.settings,
      color: Colors.white,
      size: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[300],
        body: screens[_page],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade50,
          color: Colors.deepPurple,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeIn,
          items: Items,
          letIndexChange: (value) => true,
          onTap: NavigationSelected,
          height: 60,
        ),
      ),
    );
  }
}
