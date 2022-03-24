import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int page = 0;

  List items = [
    {
      "title": "Lorem Ipsum Dolor",
      "img": "asset/intro1.png",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolorem magna aliquam erat volutpat.",
    },
    {
      "title": "Lorem Ipsum Dolor",
      "img": "asset/intro2.png",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolorem magna aliquam erat volutpat.",
    },
    {
      "title": "Lorem Ipsum Dolor",
      "img": "asset/intro3.png",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolorem magna aliquam erat volutpat.",
    },
  ];

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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: scr.width * .05,
                    vertical: 25,
                  ),
                  child: Image.asset(items[page]['img']),
                ),
                Text(
                  items[page]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(206, 37, 37, 37),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(scr.height * .05),
                  child: Text(
                    items[page]['desc'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 128, 128, 128),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 3; i++)
                      InkWell(
                        onTap: (() => setState(() => page = i)),
                        child: Container(
                          height: 6,
                          width: page == i ? 22 : 6,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                            color: page == i
                                ? const Color(0xFF117BD3)
                                : const Color.fromARGB(255, 173, 173, 173),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA9A9A9),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (page < 2) {
                      setState(() => page++);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.all(25),
                    width: 66,
                    height: 66,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                      color: Color(0xFF117BD3),
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
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
