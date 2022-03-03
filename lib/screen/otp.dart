import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/otp.dart';
import 'package:pfb_mobile/module/screen.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
              Container(
                alignment: Alignment.centerLeft,
                child: SafeArea(
                  child: InkWell(
                    onTap: (() => Navigator.pop(context)),
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 56,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2.5, 2.5),
                            spreadRadius: 0,
                            blurRadius: 3,
                            color: Color.fromARGB(38, 0, 0, 0),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(136, 0, 0, 0),
                        size: 34,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Verification Code",
                    style: TextStyle(
                        color: Color(0xFF2B2B2B),
                        fontSize: 34,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: scr.height * .04),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: scr.width * .1),
                    child: const Text(
                      "We have sent the code verification to Your Mobile Number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFA9A9A9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: scr.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "+91 9544013463",
                        style: TextStyle(
                            color: Color(0xFF4C4C4C),
                            fontSize: 21,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.verified,
                        color: Color.fromARGB(255, 37, 155, 21),
                      ),
                    ],
                  ),
                  SizedBox(height: scr.height * .02),
                  const Text(
                    "Enter OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFFA9A9A9),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < 4; i++)
                        Container(
                          margin: EdgeInsets.all(scr.width * .03),
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color(0xFFEFEFEF),
                          ),
                        )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't eeceive code? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFA9A9A9),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: const Text(
                          "Request Again",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF3FB3E4),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: scr.height * .016),
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      "Get via call",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF3FB3E4),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: scr.height * .025),
                  InkWell(
                    onTap: (() => verifyOtp(this)),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 300),
                      width: scr.width * .8,
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 24),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color(0xFF117BD3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Login",
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
                ],
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
