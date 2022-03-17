import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/home_chat.dart';
import 'package:pfb_mobile/screen/home_home.dart';
import 'package:pfb_mobile/screen/home_profile.dart';
import 'package:pfb_mobile/screen/home_q&a.dart';
import 'package:pfb_mobile/screen/home_timeline.dart';

class HomeBottemBar extends StatelessWidget {
  final int tab;
  const HomeBottemBar(this.tab, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(spreadRadius: 2, blurRadius: 3, color: Colors.black12),
        ],
      ),
      height: 60,
      child: Row(
        children: [
          SizedBox(width: scr.width * .02),
          EachBtn("Home", tab == 0, "home", const HomeScreen()),
          EachBtn("Chat", tab == 1, "chat", const ChatScreen()),
          EachBtn("Q & A", tab == 2, "qanda", const QandAScreen()),
          EachBtn("Timeline", tab == 3, "timeline", const TimeLineScreen()),
          EachBtn("Profle", tab == 4, "profile", const ProfileScreen()),
          SizedBox(width: scr.width * .02),
        ],
      ),
    );
  }
}

class EachBtn extends StatelessWidget {
  final bool selected;
  final String icon;
  final String text;
  final Widget screen;
  const EachBtn(this.text, this.selected, this.icon, this.screen, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    if (!selected) {
      return InkWell(
        onTap: (() {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => screen,
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
        }),
        child: Container(
          width: scr.width * .16,
          alignment: Alignment.center,
          child: Image.asset("asset/icon_" + icon + ".png", width: 25),
        ),
      );
    } else {
      return Expanded(
        child: Container(
          height: 45,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 27, 134, 206),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/icon_" + icon + "_w.png",
                width: 25,
                color: Colors.white,
              ),
              SizedBox(width: scr.width * .03),
              Text(
                text,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
