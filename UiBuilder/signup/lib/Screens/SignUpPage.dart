import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/LoginTale.dart';
import '../Widgets/custom_tf.dart';

class SingUpPage extends StatelessWidget {
  SingUpPage({
    super.key,
  });
  final myemail = TextEditingController();
  final mypassword = TextEditingController();
  final confirmpassword = TextEditingController();

  bool confirmpassworded() {
    if (mypassword == confirmpassword) {
      return true;
    } else {
      return false;
    }
  }

  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.lock,
              size: 150,
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "SignUp",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTF(
              keyboardtype: TextInputType.emailAddress,
              Icon: Icon(Icons.person),
              controller: myemail,
              labeltext: "Email",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTF(
              keyboardtype: TextInputType.text,
              Icon: Icon(Icons.lock_open),
              controller: mypassword,
              labeltext: "Password",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTF(
              keyboardtype: TextInputType.text,
              Icon: Icon(Icons.lock_open),
              controller: confirmpassword,
              labeltext: "ConfirmPassword",
            ),
            SizedBox(
              height: 20,
            ),
            CustomBTN(
              text: "SignUp",
              OnTap: () async {
                if (confirmpassworded()) {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: myemail.text.trim(),
                      password: mypassword.text.trim());
                  Navigator.of(context).pushNamed('homepage');
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ),
                  Text(
                    "Or continue with",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginTaleBTN(
                  icontap: () {},
                  Imagepath: 'assests/Images/download.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                LoginTaleBTN(
                    icontap: () {}, Imagepath: 'assests/Images/images.jpeg'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You have an account ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'loginpage');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
