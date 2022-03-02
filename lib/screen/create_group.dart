import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/singup.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text(
          "Create Family Group",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Create",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: scr.width * .4,
              child: Stack(
                children: [
                  Positioned(
                    left: scr.width * .3,
                    top: 0,
                    child: Container(
                      margin: EdgeInsets.all(scr.width * .03),
                      padding: const EdgeInsets.all(2),
                      width: scr.width * .34,
                      height: scr.width * .34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scr.width * .17),
                        ),
                        border: Border.all(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x1F787878),
                          borderRadius: BorderRadius.all(
                            Radius.circular(scr.width * .17),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_outline,
                          size: scr.width * .25,
                          color: const Color(0x5A2D2D2D),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: scr.width * .57,
                    top: scr.width * .04,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(1, 1),
                            color: Colors.black12,
                          )
                        ],
                      ),
                      child:
                          const Icon(Icons.add_rounded, color: Colors.black38),
                    ),
                  )
                ],
              ),
            ),
            const Text(
              "Upload Profile Image",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: scr.width * .06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SignUpEachTitle("Family Group Name"),
                  SignUpEachTextBox1("Enter Group name", (v) {}),
                  const SignUpEachTitle("Add Family Members"),
                  SignUpEachTextBox1("Search", (v) {}),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: scr.width * .04,
                vertical: 20,
              ),
              margin: EdgeInsets.symmetric(horizontal: scr.width * .06),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sort by Type",
                    style: TextStyle(
                      color: Color.fromARGB(211, 43, 43, 43),
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 17),
                  for (var i = 0; i < 2; i++)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (var i = 0; i < 3; i++)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 8,
                                ),
                                alignment: Alignment.center,
                                width: scr.width * .25,
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "All",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 16,
                                      color: Colors.black45,
                                    )
                                  ],
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 14),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: scr.width * .04,
                vertical: 15,
              ),
              margin: EdgeInsets.symmetric(horizontal: scr.width * .06),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < 2; i++)
                        Text(
                          i == 0 ? "Name" : "Relation",
                          style: const TextStyle(
                            color: Color.fromARGB(211, 43, 43, 43),
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  for (var i = 0; i < 6; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 210, 255, 246),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: Image.network(
                              "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              "Muhammed Shahul",
                              style: TextStyle(
                                color: Color.fromARGB(187, 43, 43, 43),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Brother",
                            style: TextStyle(
                              color: Color.fromARGB(187, 43, 43, 43),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
