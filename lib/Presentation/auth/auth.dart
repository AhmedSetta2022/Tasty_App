import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tasty_app/Presentation/auth/LoginPage.dart';
import 'package:tasty_app/Presentation/views/homestate.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});
  static String ID = "AuthPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeState();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
