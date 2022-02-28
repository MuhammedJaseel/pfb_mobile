import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/chat_bottembar.dart';

class ChatPersonalScreen extends StatefulWidget {
  const ChatPersonalScreen({Key? key}) : super(key: key);

  @override
  _ChatPersonalScreenState createState() => _ChatPersonalScreenState();
}

class _ChatPersonalScreenState extends State<ChatPersonalScreen> {
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
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 34,
                            color: Colors.black38,
                          ),
                        ),
                        const Text(
                          "Thanoor House",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.only(right: 10),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 40,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0x1F7D7D7D),
              height: scr.height - 130,
              child: ListView(
                padding: const EdgeInsets.only(top: 15),
                children: [
                  
                ],
              ),
            ),
            const ChatBottemBar(),
          ],
        ),
      ),
    );
  }
}
