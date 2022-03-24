import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/signup.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/singup.dart';

String heritage = "Father";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  setheritage(v) {
    heritage = v == 0 ? "Father" : "Mother";
  }

  setGender(v) {
    heritage = v == 0 ? "Male" : "Female";
  }

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 24),
            height: 80,
            width: scr.width,
            child: const SafeArea(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xFF2B2B2B),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: scr.width * .08),
            height: scr.height - 80,
            width: scr.width,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 6),
              children: [
                const SignUpEachTitle("Name"),
                SignUpEachTextBox1('Enter name', (v) {}),
                SignUpGenderSelecter(setGender),
                const SignUpEachTitle("Family Name"),
                SignUpEachTextBox1('Enter name', (v) {}),
                SignUpFamillySelecter(setheritage),
                const SignUpEachTitle("Mobile Number"),
                SignUpEachTextBox1(
                  'Enter number',
                  (v) {},
                  keyboard: TextInputType.phone,
                ),
                const SignUpEachTitle("Email"),
                SignUpEachTextBox1(
                  'Enter Email ID',
                  (v) {},
                  keyboard: TextInputType.emailAddress,
                ),
                // const SignUpEachTitle("Location"),
                // SignUpSetLocation('Kozikode', (v) {}),
                SizedBox(height: scr.height * .1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() => userSignUp(this, context)),
                      child: Container(
                        width: scr.width * .7,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 24),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF117BD3),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scr.height * .15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
