import 'package:chatapp/Constans.dart';
import 'package:chatapp/Customs/TextField.dart';
import 'package:chatapp/Screens/ChatPage.dart';
import 'package:chatapp/Screens/RegisterPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Customs/CustomButton.dart';
import '../Customs/SnakeBar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  String? Email;
  String? Password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kprimarycolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/images/scholar.png",
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PsychoChat",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTF(
                  OnChanged: (data) {
                    this.Email = data;
                  },
                  hinttext: "Email Adress",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTF(
                  obscure: true,
                  OnChanged: (data) {
                    this.Password = data;
                  },
                  hinttext: "Password",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await SignupMethod();
                        Navigator.pushNamed(context, MyChatPage.id,
                            arguments: Email);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          SnakeBarMessege(
                              context, "Use not Found , Please SignUp");
                        } else if (e.code == 'wrong-password') {
                          SnakeBarMessege(context,
                              "Incorrect Password ,Please Enter availd Password");
                        }
                      } catch (e) {
                        SnakeBarMessege(context, "There was an error!");
                      }
                      isLoading = false;
                      setState(() {});
                    } else {
                      print("Error");
                    }
                  },
                  ButtonName: "Login",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account ?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pushNamed(context, RegisterPage.id);
                      }),
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> SignupMethod() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: Email!, password: Password!);
  }
}
