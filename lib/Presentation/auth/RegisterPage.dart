// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasty_app/Presentation/auth/LoginPage.dart';
import 'package:tasty_app/Presentation/auth/auth.dart';
import 'package:tasty_app/Presentation/views/homestate.dart';

import '../widgets/Textfield.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String ID = "RegisterPage";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

bool? ontapped;
bool? onconiformedtapped;

class _RegisterPageState extends State<RegisterPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmPasswordcontroller = TextEditingController();
  GlobalKey<FormState> formKeyAuth = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirmPasswordcontroller.dispose();
    super.dispose();
  }

  signup() async {
    if (confirmPassword()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailcontroller.text.trim(),
            password: _passwordcontroller.text.trim());
        await AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.bottomSlide,
          title: 'Success',
          desc: 'Welcome',
          btnOkOnPress: () {},
          titleTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
          descTextStyle: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        ).show();
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, Auth.ID);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title: 'Password Error',
            desc: 'The password provided is too weak.',
            btnCancelOnPress: () {},
            titleTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
            descTextStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ).show();
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title: 'Email Error',
            desc: 'The account already exists for that email.',
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
          dialogType: DialogType.error,
          animType: AnimType.bottomSlide,
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
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.question,
        animType: AnimType.bottomSlide,
        title: 'Password Matching',
        desc: 'Make sure your ConfirmPassword is matching your password',
        titleTextStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple),
        descTextStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        btnCancelOnPress: () {},
      ).show();
    }
  }

  bool confirmPassword() {
    if (_passwordcontroller.text.trim() ==
        _confirmPasswordcontroller.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    ontapped = true;
    onconiformedtapped = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Form(
            key: formKeyAuth,
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(
                    Icons.android,
                    size: 80,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text(
                    "Hello There",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Register below with your details!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 50,
                  ),
                  // ignore: missing_required_param
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
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _confirmPasswordcontroller,
                    keyboardType: TextInputType.text,
                    hintText: 'ConfirmPassword',
                    ObSecureText: onconiformedtapped!,
                    prefix: const Icon(Icons.lock),
                    EyeIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          onconiformedtapped = !onconiformedtapped!;
                        });
                      },
                      icon: onconiformedtapped!
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    ButtonName: "SignUp",
                    onTap: () async {
                      if (formKeyAuth.currentState!.validate()) {
                        await signup();
                      } else {
                        await AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.bottomSlide,
                          title: 'Error',
                          desc: 'Something went error',
                          btnOkOnPress: () {},
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
                        "Already have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login now",
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
