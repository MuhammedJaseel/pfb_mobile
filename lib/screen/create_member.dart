import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/singup.dart';

class CreateMemberScreen extends StatefulWidget {
  const CreateMemberScreen({Key? key}) : super(key: key);

  @override
  State<CreateMemberScreen> createState() => _CreateMemberScreenState();
}

class _CreateMemberScreenState extends State<CreateMemberScreen> {
  int selected = 0;
  int selectedCategory = 0;
  List category = [
    {
      "title": "Parent",
      "img": "asset/x6.png",
      "category": [
        {"title": "Father"},
        {"title": "Mother"},
      ],
    },
    {
      "title": "Sibling",
      "img": "asset/x8.png",
      "category": [
        {"title": "Brother"},
        {"title": "Sister"},
      ],
    },
    {
      "title": "Wife / Husband",
      "img": "asset/x5.png",
      "category": [
        {"title": "Wife"},
        {"title": "Husband"},
      ],
    },
    {
      "title": "Children",
      "img": "asset/x4.png",
      "category": [
        {"title": "Boy"},
        {"title": "Girl"},
      ],
    },
    {
      "title": "Born Baby",
      "img": "asset/x_4.png",
      "category": [
        {"title": "Boy"},
        {"title": "Girl"},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: scr.width * .06,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Text(
              "Add Family Member",
              style: TextStyle(
                color: Color.fromARGB(211, 43, 43, 43),
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 34),
            const Text(
              "Select",
              style: TextStyle(
                color: Color.fromARGB(211, 43, 43, 43),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: scr.width,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i = 0; i < category.length; i++)
                    Column(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            selected = i;
                            selectedCategory = 0;
                          }),
                          child: Container(
                            height: 75,
                            width: 75,
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: selected == i
                                  ? const Color(0xFFD0E2FC)
                                  : const Color(0xFFEFEFEF),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Image.asset(
                              category[i]['img'],
                              color: selected == i
                                  ? const Color(0xFF1766D5)
                                  : null,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                category[i]['title'],
                                style: TextStyle(
                                  color: selected == i
                                      ? const Color(0xD2444444)
                                      : const Color(0xD27B7B7B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < category[i]['category'].length; i++)
                  InkWell(
                    onTap: () => setState(() => selectedCategory = i),
                    child: Container(
                      height: 40,
                      width: scr.width * .3,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: selectedCategory == i
                            ? const Color(0xFFD0E2FC)
                            : const Color(0xFFEFEFEF),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(18)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        category[selected]['category'][i]['title'],
                        style: TextStyle(
                          color: selectedCategory == i
                              ? const Color(0xFF237FFF)
                              : const Color(0x9A2B2B2B),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              width: scr.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpEachTitle(category[selected]['category']
                          [selectedCategory]['title'] +
                      " 's Name"),
                  SignUpEachTextBox1("Text here", (v) {}),
                  const SignUpEachTitle("Age"),
                  SignUpEachTextBox1("Text here", (v) {}),
                  const SignUpEachTitle("Profile Image"),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(31, 62, 62, 62),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Text(
                      "Choose File",
                      style: TextStyle(
                        color: Color.fromARGB(154, 43, 43, 43),
                        fontSize: 16.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: scr.width * .7,
              margin: const EdgeInsets.symmetric(vertical: 40),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 47, 122, 228),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
