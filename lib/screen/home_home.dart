import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/home.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/noti.dart';
import 'package:pfb_mobile/widget/home.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';
import 'package:pfb_mobile/widget/home_stream.dart';
import 'package:pfb_mobile/widget/loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          "Fathima Mansil",
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
                          icon: Image.asset("asset/icon_search.png", width: 22),
                        ),
                        IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotiScreen(),
                            ),
                          ),
                          icon: Image.asset("asset/icon_bell.png", width: 22),
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
                  const HomeStory(),
                  const SizedBox(height: 20),
                  const HomeOnlineMembers(),
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
                    child: const HomePostMaker(),
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

class HomeStory extends StatefulWidget {
  const HomeStory({Key? key}) : super(key: key);

  @override
  State<HomeStory> createState() => _HomeStoryState();
}

class _HomeStoryState extends State<HomeStory> {
  List stories = [];
  bool loading = true;

  @override
  void initState() {
    getHomeStory(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 12),
          for (var i = 0; i < stories.length; i++) HomeEachStory(stories[i]),
          if (loading)
            for (var i = 0; i < 5; i++)
              Container(
                margin: const EdgeInsets.only(right: 12),
                height: 130,
                width: 105,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(20, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Loading(viewStatus: false),
              ),
        ],
      ),
    );
  }
}

class HomeOnlineMembers extends StatefulWidget {
  const HomeOnlineMembers({Key? key}) : super(key: key);

  @override
  State<HomeOnlineMembers> createState() => _HomeOnlineMembersState();
}

class _HomeOnlineMembersState extends State<HomeOnlineMembers> {
  List onlines = [];
  bool loading = true;

  @override
  void initState() {
    getHomeOnlines(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 17),
          for (var i = 0; i < onlines.length; i++)
            HomeOnlineStutusEach(onlines[i]),
          if (loading)
            for (var i = 0; i < 10; i++)
              Container(
                margin: const EdgeInsets.only(right: 17),
                height: 54,
                width: 54,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(27)),
                ),
              ),
        ],
      ),
    );
  }
}
