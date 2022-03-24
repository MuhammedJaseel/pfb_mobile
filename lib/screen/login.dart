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
  List contryCodes = ['91', '971'];
  String selectedContry = '91';

  bool loginIsactive = false;

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/login_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
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
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  const Text(
                    "Mobile Number",
                    style: TextStyle(
                        color: Color(0xFF4C4C4C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints: const BoxConstraints(maxWidth: 300),
                        width: 96,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 3,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: Color(0xFFEFEFEF),
                        ),
                        child: DropdownButton(
                          value: selectedContry,
                          underline: const SizedBox(),
                          style: const TextStyle(color: Color(0xFF1E1E1E)),
                          items: contryCodes
                              .map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  Image.asset("asset/flags/$value.jpg",
                                      width: 20),
                                  Text("+" + value),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (String? v) {
                            setState(() => selectedContry = v!);
                          },
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 300),
                        width: scr.width * .85 - 76,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 3,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: Color(0xFFEFEFEF),
                        ),
                        child: TextField(
                          onChanged: ((v) {
                            if (v.length == 10) {
                              setState(() => loginIsactive = true);
                            } else {
                              setState(() => loginIsactive = false);
                            }
                          }),
                          keyboardType: TextInputType.number,
                          controller: phoneC,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter mobile number',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 155, 155, 155),
                              fontSize: 14,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    alignment: Alignment.center,
                    child: Text(
                      error ?? '',
                      style: const TextStyle(
                          color: Color.fromARGB(235, 224, 26, 26),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Text(
                    "You'll receive a 4 digit code\nto verify next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFFA9A9A9),
                        fontSize: 14,
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    color:
                        loginIsactive ? const Color(0xFF117BD3) : Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Request OTP",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
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
      ),
    );
  }
}
