import 'package:chatapp/Constans.dart';
import 'package:chatapp/Customs/TextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Customs/CustomButton.dart';
import '../Customs/SnakeBar.dart';
import 'ChatPage.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    super.key,
  });
  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? Eamil;

  String? Password;

  GlobalKey<FormState> formkey = GlobalKey();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
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
                      "SignUp",
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
                    this.Eamil = data;
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
                      isloading = true;
                      setState(() {});
                      try {
                        await RegistreationMethor();
                        Navigator.pushNamed(context, MyChatPage.id,
                            arguments: Eamil);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          SnakeBarMessege(context, "Weak Password");
                        } else if (e.code == 'email-already-in-use') {
                          SnakeBarMessege(context, "Email already in use");
                        }
                      } catch (e) {
                        SnakeBarMessege(context, "There was an error!");
                      }
                      isloading = false;
                      setState(() {});
                    } else {}
                  },
                  ButtonName: "Signup",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Text(
                        "Login",
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

  Future<void> RegistreationMethor() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Eamil!, password: Password!);
  }
}
