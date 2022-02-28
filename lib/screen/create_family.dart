import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/create_family.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/create_family.dart';
import 'package:pfb_mobile/widget/singup.dart';

class CreateFamilyScreen extends StatelessWidget {
  const CreateFamilyScreen({Key? key}) : super(key: key);

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
            child: SafeArea(
                child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black38,
                    size: 30,
                  ),
                ),
                const Text(
                  "Create Family",
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: scr.width * .08),
            height: scr.height - 80,
            width: scr.width,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 16),
              children: [
                Column(
                  children: [
                    const Text(
                      "Muhammed Ammer",
                      style: TextStyle(
                        color: Color.fromARGB(255, 24, 24, 24),
                        fontSize: 21.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Vadakan Veettil",
                      style: TextStyle(
                        color: Color.fromARGB(255, 24, 24, 24),
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      "Mother Heritage",
                      style: TextStyle(
                        color: Color.fromARGB(255, 104, 104, 104),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: scr.width * .3,
                      height: scr.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scr.width * .15),
                        ),
                        border: Border.all(width: 2, color: Colors.blue),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(scr.width * .15 - 4),
                          ),
                          border: Border.all(width: 2, color: Colors.white),
                          color: const Color.fromARGB(31, 117, 117, 117),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.black26,
                          size: scr.width * .22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Upload Profile image",
                      style: TextStyle(
                        color: Color.fromARGB(255, 104, 104, 104),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
                const SignUpEachTitle("Name"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: scr.width - 185,
                      child: SignUpEachTextBox1('Father name', (v) {}),
                    ),
                    CreateFamilyCheckBox("Mark Death", (v) {})
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      width: scr.width * .32,
                      child: SignUpEachTextBox1('Death Date', (v) {}),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: SignUpEachTextBox1('Family name', (v) {}),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: scr.width - 185,
                      child: SignUpEachTextBox1('Mother name', (v) {}),
                    ),
                    CreateFamilyCheckBox("Mark Death", (v) {})
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      width: scr.width * .32,
                      child: SignUpEachTextBox1('Death Date', (v) {}),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: SignUpEachTextBox1('Family name', (v) {}),
                    )
                  ],
                ),
                SizedBox(height: scr.height * .1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() => createFamily(this, context)),
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
                          "Next",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
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