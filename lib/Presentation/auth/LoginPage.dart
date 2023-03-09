// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/auth/RegisterPage.dart';
import 'package:tasty_app/Presentation/widgets/Textfield.dart';
import 'package:tasty_app/Presentation/widgets/custom_button.dart';

import 'auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String ID = "LoginPage";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool? ontapped;

class _LoginPageState extends State<LoginPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    ontapped = true;
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  signin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailcontroller.text.trim(),
          password: _passwordcontroller.text.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.info,
          animType: AnimType.rightSlide,
          title: 'Email Error',
          desc: 'User not found ',
          titleTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
          descTextStyle: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          btnCancelOnPress: () {},
        ).show();
      } else if (e.code == 'wrong-password') {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.info,
          animType: AnimType.rightSlide,
          title: 'Password Error',
          desc: 'Wrong Password',
          btnCancelOnPress: () {},
          titleTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
          descTextStyle: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        ).show();
      }
    } catch (e) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.info,
        animType: AnimType.rightSlide,
        title: 'Error',
        desc: 'Something went Error',
        btnCancelOnPress: () {},
        titleTextStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple),
        descTextStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Form(
            key: formkey,
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(
                    Icons.android,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text(
                    "Hello Again !",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Welcome back , you\'ve been missed",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefix: Icon(Icons.person),
                    ObSecureText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _passwordcontroller,
                    keyboardType: TextInputType.text,
                    hintText: 'Password',
                    ObSecureText: ontapped!,
                    prefix: const Icon(Icons.lock),
                    EyeIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ontapped = !ontapped!;
                        });
                      },
                      icon: ontapped!
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    ButtonName: "SignIn",
                    onTap: () async {
                      if (formkey.currentState!.validate()) {
                        await signin();
                      } else {
                        await AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.bottomSlide,
                          title: 'Error',
                          desc: 'Something went error',
                          btnCancelOnPress: () {},
                          titleTextStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                          descTextStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).show();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don\'t have an account ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.ID);
                        },
                        child: Text(
                          "Register now",
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
