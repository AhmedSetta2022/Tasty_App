import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/auth/LoginPage.dart';
import 'package:tasty_app/Presentation/auth/RegisterPage.dart';
import 'package:tasty_app/Presentation/auth/auth.dart';
import 'package:tasty_app/Presentation/views/Favoirte.dart';
import 'package:tasty_app/Presentation/views/HomePage.dart';
import 'package:tasty_app/Presentation/views/homestate.dart';
import 'package:tasty_app/Presentation/views/settings.dart';
import 'package:tasty_app/Presentation/views/settings_views/call_us.dart';
import 'package:tasty_app/Presentation/views/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TastyApp());
}

class TastyApp extends StatelessWidget {
  const TastyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Splashscreen.ID: (context) => const Splashscreen(),
        LoginPage.ID: (context) => const LoginPage(),
        HomeState.ID: (context) => const HomeState(),
        RegisterPage.ID: (context) => const RegisterPage(),
        Auth.ID: (context) => const Auth(),
        FavoirtePage.ID: (context) => const FavoirtePage(),
        SettingsPage.ID: (context) => const SettingsPage(),
        HomePage.ID: (context) => const HomePage(),
        CallUsPage.ID: (context) => const CallUsPage(),
      },
      initialRoute: Splashscreen.ID,
    );
  }
}
