import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/auth/auth.dart';
import '../auth/LoginPage.dart';
import '../widgets/splash_body.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  static const String ID = 'SplashScreen';

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context) => const Auth()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white, body: Splashscreenbody());
  }
}
