import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';
import 'package:pfb_mobile/widget/singup.dart';

class QandAScreen extends StatelessWidget {
  const QandAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      body: SizedBox(
        width: scr.width,
        height: scr.height,
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Questions",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF2B2B2B),
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scr.height - 140,
              child: ListView(
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
                          borderRadius: BorderRadius.all(
                              Radius.circular(scr.width * .28)),
                          border: Border.all(width: 2, color: Colors.blue),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(scr.width * .28)),
                          child: Image.network(
                            "http://bestprofilepix.com/wp-content/uploads/2014/03/sad-and-alone-boys-facebook-profile-pictures.jpg",
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
                              color: Color(0xFF343434),
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: scr.width * .03),
                          Row(
                            children: [
                              const Text(
                                "Age : 31",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 135, 135, 135),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                  margin:
                                      EdgeInsets.only(left: scr.width * .04),
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
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 12,
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
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const QandABody()
                ],
              ),
            ),
            const HomeBottemBar(2),
          ],
        ),
      ),
    );
  }
}

class QandABody extends StatefulWidget {
  const QandABody({Key? key}) : super(key: key);

  @override
  _QandABodyState createState() => _QandABodyState();
}

class _QandABodyState extends State<QandABody> {
  int tab = 0;
  final tabs = ["You", "Family", "Intrests", "Hobbies"];

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Column(
      children: [
        const SizedBox(height: 32),
        Container(
          height: 32,
          width: scr.width,
          decoration: const BoxDecoration(
            color: Color(0xFFE6F6FF),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: EdgeInsets.symmetric(horizontal: scr.width * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < 4; i++)
                InkWell(
                  onTap: (() => setState(() => tab = i)),
                  child: Container(
                    width: scr.width * .22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: i == tab ? Colors.blue : null,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Text(
                      tabs[i],
                      style: TextStyle(
                        color: i == tab
                            ? const Color(0xFFFFFFFF)
                            : const Color(0x7D404040),
                        fontSize: 13,
                        fontWeight:
                            i == tab ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          height: 13,
          width: scr.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 226, 226, 226),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: scr.width * .07,
            vertical: 25,
          ),
          child: Row(
            children: [
              Container(
                height: 12,
                width: scr.width * .6,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 252, 183, 34),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
              ),
            ],
          ),
        ),
        for (var i = 0; i < 3; i++)
          Container(
            padding: const EdgeInsets.all(14),
            margin: EdgeInsets.only(
              left: scr.width * .03,
              right: scr.width * .03,
              bottom: 10,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFE6F6FF),
            ),
            child: Column(
              children: [
                const Text(
                  "Lorem ipsum dolor sit amet, condectetuer addipiscing elit, sed diam nonummy ?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 93, 93, 93),
                    fontSize: 14.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SignUpEachTextBox1("Text here", (v) {}),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: scr.width * .05,
                          vertical: 6,
                        ),
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            color: Color.fromARGB(255, 165, 165, 165),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: Container(
                        width: 85,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
