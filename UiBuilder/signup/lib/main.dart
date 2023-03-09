import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signup/Screens/AuthPage.dart';
import 'package:signup/Screens/HomePage.dart';
import 'package:signup/Screens/SignUpPage.dart';

import 'Screens/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'loginpage': (context) => LoginPage(),
        'signuppage': (context) => SingUpPage(),
        'homepage': (context) => HomePage(),
        'auth': (context) => const Auth(),
      },
    );
  }
}
