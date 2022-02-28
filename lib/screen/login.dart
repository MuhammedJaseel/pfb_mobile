import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/login.dart';
import 'package:pfb_mobile/module/screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? error;
  TextEditingController phoneC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      body: SizedBox(
        width: scr.width,
        height: scr.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Text(
              "Login",
              style: TextStyle(
                  color: Color(0xFF2B2B2B),
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                const Text(
                  "Mobile Number",
                  style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 300),
                  width: scr.width * .8,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFFEFEFEF),
                  ),
                  child: TextField(
                    controller: phoneC,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter mobile number',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 155, 155, 155),
                        fontSize: 16,
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    error ?? '',
                    style: const TextStyle(
                        color: Color.fromARGB(235, 224, 26, 26),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Text(
                  "You'll receive a 4 digit code\nto verify next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFA9A9A9),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            InkWell(
              onTap: (() => requestOtp(this)),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 300),
                width: scr.width * .8,
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(0xFF117BD3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Request OTP",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xFFFFFFFF),
                      size: 26,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
