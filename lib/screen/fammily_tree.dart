import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/home_profile.dart';

class FamilyTreeScreen extends StatefulWidget {
  const FamilyTreeScreen({Key? key}) : super(key: key);

  @override
  State<FamilyTreeScreen> createState() => _FamilyTreeScreenState();
}

class _FamilyTreeScreenState extends State<FamilyTreeScreen> {
  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text(
          "My Family",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: scr.width * 1.3,
          child: Stack(
            children: [
              const ProfileFrameLine(1.4, .1),
              const ProfileFramedPhoto('6m', .18, .4, .13),
              const ProfileFrameLine(1.6, .1),
              const ProfileFramedPhoto('6f', .18, .6, .13),
              //
              const ProfileFrameLine(.17, .2),
              const ProfileFramedPhoto('8f', .13, .8, .67),
              const ProfileFrameLine(0, .2),
              const ProfileFramedPhoto('8f', .13, .8, .5),
              const ProfileFrameLine(1.83, .2),
              const ProfileFramedPhoto('8f', .13, .8, .33),
              //
              const ProfileFrameLine(1.17, .2),
              const ProfileFramedPhoto('8m', .13, .2, .33),
              const ProfileFrameLine(1, .2),
              const ProfileFramedPhoto('8m', .13, .2, .5),
              const ProfileFrameLine(.83, .2),
              const ProfileFramedPhoto('8m', .13, .2, .67),
              //
              const ProfileFrameLine(.7, .1),
              const ProfileFramedPhoto('5f', .18, .3, .85),
              const ProfileFrameLine(.3, .1),
              const ProfileFramedPhoto('5f', .18, .7, .85),
              //
              // const ProfileFrameLine1(.3, .1, .3, .85),
              // const ProfileFrameLine1(.3, .1, .7, .85),
              //
              Positioned(
                top: scr.width * .38,
                left: scr.width * .38,
                child: Container(
                  width: scr.width * .26,
                  height: scr.width * .26,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(scr.width * .15),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FamilyTreeScreen(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scr.width * .15),
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
