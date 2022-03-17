import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/chat_bottembar.dart';

class ChatPersonalScreen extends StatefulWidget {
  const ChatPersonalScreen({Key? key}) : super(key: key);

  @override
  _ChatPersonalScreenState createState() => _ChatPersonalScreenState();
}

class _ChatPersonalScreenState extends State<ChatPersonalScreen> {
  List msgs = [
    {
      "title": "Today",
      "data": [
        {"me": true, "time": "10 : 30 am", "msg": "Hi"},
        {"me": false, "time": "10 : 30 am", "msg": "Hi Bro."},
        {"me": false, "time": "10 : 30 am", "msg": "How are you ?"},
        {"me": true, "time": "10 : 30 am", "msg": "I am Fine :)"},
        {"me": true, "time": "10 : 30 am", "msg": "How are you ?"},
      ],
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
                          onPressed: () =>Navigator.pop(context),
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
                  for (var i = 0; i < msgs.length; i++)
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: scr.width * .08,
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 240, 225, 200),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Text(
                            msgs[i]['title'].toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(78, 0, 0, 0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        for (var j = 0; j < msgs[i]['data'].length; j++)
                          Row(
                            mainAxisAlignment: msgs[i]['data'][j]['me']
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (!msgs[i]['data'][j]['me'])
                                SizedBox(width: scr.width * .04),
                              if (!msgs[i]['data'][j]['me'])
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  child: Image.network(
                                    "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
                                    fit: BoxFit.cover,
                                    width: 42,
                                    height: 42,
                                  ),
                                ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: scr.width * .04,
                                ),
                                margin: EdgeInsets.only(
                                  top: 4.5,
                                  bottom: 4.5,
                                  right: scr.width * .04,
                                  left: scr.width * .02,
                                ),
                                decoration: BoxDecoration(
                                  color: msgs[i]['data'][j]['me']
                                      ? const Color(0xFFF7EBD7)
                                      : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      offset: Offset(2, 2),
                                      color: Color.fromARGB(31, 0, 0, 0),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(height: 6),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: scr.width * .75 - 55,
                                          ),
                                          child: Text(
                                            msgs[i]['data'][j]['msg']
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Color(0xAB000000),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                      ],
                                    ),
                                    const Text(
                                      "10 : 30 am",
                                      style: TextStyle(
                                        fontSize: 8.5,
                                        color: Color(0x40000000),
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                    )
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
