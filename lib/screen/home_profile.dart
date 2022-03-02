import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/profile_menu.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';
import 'package:pfb_mobile/widget/home_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                        "My Profile",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF2B2B2B),
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(right: 15),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                const ProfileMenuScreen(),
                            // transitionDuration: Duration.zero,
                            // reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.more_horiz,
                        size: 40,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scr.height - 140,
              child: ListView(
                children: [
                  SizedBox(
                    height: scr.width * 1.3,
                    child: Stack(
                      children: const [
                        ProfileFrameLine(1.4, .1),
                        ProfileFramedPhoto('6', .18, .4, .1),
                        ProfileFrameLine(1.6, .1),
                        ProfileFramedPhoto('6', .18, .6, .1),
                        //
                        ProfileFrameLine(.2, .2),
                        ProfileFramedPhoto('8', .15, .8, .7),
                        ProfileFrameLine(0, .2),
                        ProfileFramedPhoto('8', .15, .8, .5),
                        ProfileFrameLine(1.8, .2),
                        ProfileFramedPhoto('8', .15, .8, .3),
                        //
                        ProfileFrameLine(1.2, .2),
                        ProfileFramedPhoto('8', .15, .2, .3),
                        ProfileFrameLine(1, .2),
                        ProfileFramedPhoto('8', .15, .2, .5),
                        ProfileFrameLine(.8, .2),
                        ProfileFramedPhoto('8', .15, .2, .7),
                        //
                        ProfileFrameLine(.6, .1),
                        ProfileFramedPhoto('5', .18, .4, .9),
                        ProfileFrameLine(.4, .1),
                        ProfileFramedPhoto('5', .18, .6, .9),
                      ],
                    ),
                  ),
                  Container(height: 1, color: Colors.black12),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: scr.width * .07),
                      Container(
                        width: scr.width * .2,
                        height: scr.width * .2,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(scr.width * .1),
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: scr.width * .04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: scr.width * .62 - 35,
                                child: const Text(
                                  "Muhammed Ameer",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 34, 34, 34),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.male,
                                color: Color(0xFFB1EEFF),
                                size: 35,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Age : 31",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 135, 135, 135),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: scr.width * .04),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 13,
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
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: scr.width * .02),
                          Container(
                            height: 8,
                            width: scr.width * .62,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 226, 226, 226),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8,
                                  width: scr.width * .5,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 1, 145, 177),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const ProfileBody()
                ],
              ),
            ),
            const HomeBottemBar(4),
          ],
        ),
      ),
    );
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  int tab = 0;
  final tabs = ["About", "Gallery", "Documents"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Column(
      children: [
        const SizedBox(height: 32),
        Container(
          height: 30,
          width: scr.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 223, 223, 223),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: EdgeInsets.symmetric(horizontal: scr.width * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < 3; i++)
                InkWell(
                  onTap: (() => setState(() => tab = i)),
                  child: Container(
                    width: scr.width * .3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: i == tab ? const Color(0xFF7941AA) : null,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Text(
                      tabs[i],
                      style: TextStyle(
                        color: i == tab
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : const Color.fromARGB(126, 64, 64, 64),
                        fontSize: 14,
                        fontWeight:
                            i == tab ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (tab == 0) const ProfileAbout(),
        if (tab == 1) const ProfileGallery(),
        if (tab == 2) const ProfileDocuments(),
      ],
    );
  }
}
