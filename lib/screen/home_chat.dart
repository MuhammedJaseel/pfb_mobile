import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/home.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/chat_personal.dart';
import 'package:pfb_mobile/screen/create_group.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';
import 'package:pfb_mobile/widget/loading.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Chat Board",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF2B2B2B),
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 34,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scr.height - 140,
              child: Stack(
                children: [
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: HomeChatBody(),
                  ),
                  Positioned(
                    right: 22,
                    bottom: 15,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateGroupScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1C83D6),
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                        ),
                        child: const Icon(
                          Icons.add_rounded,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const HomeBottemBar(1),
          ],
        ),
      ),
    );
  }
}

class HomeChatBody extends StatefulWidget {
  const HomeChatBody({Key? key}) : super(key: key);

  @override
  State<HomeChatBody> createState() => _HomeChatBodyState();
}

class _HomeChatBodyState extends State<HomeChatBody> {
  List chats = [];
  bool loading = true;

  @override
  void initState() {
    getHomeChats(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        if (loading) const Loading(viewStatus: false),
        for (var i = 0; i < chats.length; i++)
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatPersonalScreen(),
              ),
            ),
            child: Container(
              height: 87,
              padding: EdgeInsets.only(right: scr.width * .02),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    decoration: BoxDecoration(
                      color:
                          (i % 2 == 1) ? const Color(0xFF1773BE) : Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                    ),
                  ),
                  SizedBox(width: scr.width * .04),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Image.network(
                        chats[i]['img'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: scr.width * .04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          chats[i]['name'],
                          style: const TextStyle(
                            color: Color(0xFF3B3B3B),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          chats[i]['last_msg'],
                          style: const TextStyle(
                            color: Color(0xFF8D8D8D),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: scr.width * .02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chats[i]['time'],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 141, 141, 141),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 18),
                      if (chats[i]['totel_msg'] != '')
                        Text(
                          chats[i]['totel_msg'] + " messages",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 141, 141, 141),
                            fontSize: 11,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
