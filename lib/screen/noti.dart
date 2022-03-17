import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text("Notification"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        children: [
          for (var i = 0; i < 4; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: scr.width * .04,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: scr.width,
                        child: const Text(
                          "12-10-2021 | 12:30",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 11.5,
                            color: Color.fromARGB(150, 27, 27, 27),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Lorem ipsum solor sit amet, consetetur",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color.fromARGB(255, 41, 41, 41),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Lorem ipsum solor sit amet, consetetur Lorem ipsum solor sit amet, consetetur Lorem ipsum solor sit amet, consetetur Lorem ipsum solor sit amet, consetetur",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromARGB(185, 27, 27, 27),
                        ),
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
