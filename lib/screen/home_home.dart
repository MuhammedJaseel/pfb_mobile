import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/noti.dart';
import 'package:pfb_mobile/widget/home.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';
import 'package:pfb_mobile/widget/home_stream.dart';
import 'package:pfb_mobile/widget/singup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("asset/icon_drower.png", width: 25),
                        ),
                        const Text(
                          "Perfect Family Builder",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("asset/icon_search.png", width: 25),
                        ),
                        IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotiScreen(),
                            ),
                          ),
                          icon: Image.asset("asset/icon_bell.png", width: 25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scr.height - 140,
              child: ListView(
                padding: const EdgeInsets.only(top: 15),
                children: [
                  SizedBox(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 12),
                        for (var i = 0; i < 10; i++) const HomeEachStory(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 17),
                        for (var i = 0; i < 10; i++)
                          const HomeOnlineStutusEach()
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 18,
                    ),
                    margin: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 3,
                          spreadRadius: 0,
                          color: Color.fromARGB(22, 0, 0, 0),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                border:
                                    Border.all(width: 2, color: Colors.blue),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: Image.network(
                                  "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Whats new !",
                              style: TextStyle(
                                color: Color.fromARGB(255, 100, 100, 100),
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SignUpEachTextBox1("Type message..", (v) {}),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text(
                              "Normal",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color.fromARGB(202, 126, 126, 126),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Row(
                                children: [
                                  HometexteditBtn(Icons.format_bold, () {}),
                                  HometexteditBtn(Icons.format_italic, () {}),
                                  HometexteditBtn(
                                      Icons.format_underline, () {}),
                                  HometexteditBtn(
                                      Icons.format_strikethrough, () {}),
                                  HometexteditBtn(Icons.photo, () {}),
                                  HometexteditBtn(Icons.insert_link, () {}),
                                  HometexteditBtn(Icons.format_italic, () {}),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                HometexteditBtn(Icons.attach_file, () {}),
                                HometexteditBtn(Icons.location_on, () {}),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  for (var i = 0; i < 5; i++) const HomeEachStream(),
                ],
              ),
            ),
            const HomeBottemBar(0),
          ],
        ),
      ),
    );
  }
}
