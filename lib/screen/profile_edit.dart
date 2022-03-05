import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/singup.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text("Update You"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          Row(
            children: [
              SizedBox(width: scr.width * .07),
              Container(
                width: scr.width * .28,
                height: scr.width * .28,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(scr.width * .28)),
                  border: Border.all(width: 2, color: Colors.blue),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(scr.width * .28)),
                  child: Image.network(
                    "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: scr.width * .04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Muhammed Ameer",
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: scr.width * .03),
                  Row(
                    children: [
                      const Text(
                        "Age : 31",
                        style: TextStyle(
                          color: Color.fromARGB(255, 135, 135, 135),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: scr.width * .04),
                        padding: EdgeInsets.symmetric(
                          horizontal: scr.width * .02,
                          vertical: 3,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              "2300",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: scr.width * .02),
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            height: 13,
            width: scr.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            margin: EdgeInsets.symmetric(horizontal: scr.width * .07),
            child: Row(
              children: [
                Container(
                  height: 13,
                  width: scr.width * .6,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 252, 183, 34),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: scr.width * .07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpEachTitle("Update your Family Name ?"),
                SignUpEachTextBox1("Text here", (v) {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProfileEditBtn1(0, () {}),
                    ProfileEditBtn1(1, () {}),
                    ProfileEditBtn1(2, () {}),
                  ],
                ),
                const SignUpEachTitle("Update your Father’s Name ?"),
                SignUpEachTextBox1("Text here", (v) {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProfileEditBtn1(0, () {}),
                    ProfileEditBtn1(1, () {}),
                    ProfileEditBtn1(2, () {}),
                  ],
                ),
                const SignUpEachTitle("Update your Mother’s Name ?"),
                SignUpEachTextBox1("Text here", (v) {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProfileEditBtn1(0, () {}),
                    ProfileEditBtn1(1, () {}),
                    ProfileEditBtn1(2, () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileEditBtn1 extends StatelessWidget {
  final int i;
  final Function fun;
  const ProfileEditBtn1(this.i, this.fun, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return InkWell(
      onTap: (() => fun()),
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
          left: scr.width * .02,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: scr.width * .04,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: i == 0
              ? Colors.black12
              : i == 1
                  ? Colors.blue
                  : Colors.green,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          i == 0
              ? "Close"
              : i == 1
                  ? "Pending"
                  : "Submit",
          style: TextStyle(
            color: i == 0 ? const Color(0xFF8A8A8A) : const Color(0xFFFFFFFF),
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
