import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/create_member.dart';
import 'package:pfb_mobile/screen/profile_files.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    List details = [
      {"title": "Family Name", "data": "Fathima Mansil"},
      {"title": "Contact", "data": "+91 9544013463"},
      {"title": "Address", "data": "Vadakan Veetil, Po Manakavu"},
    ];
    return SizedBox(
      width: scr.width * .9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          for (var i = 0; i < 3; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  details[i]['title'],
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  details[i]['data'],
                  style: const TextStyle(
                    color: Color.fromARGB(201, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            )
        ],
      ),
    );
  }
}

class ProfileGallery extends StatelessWidget {
  const ProfileGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Column(
      children: [
        InkWell(
          onTap: (() {}),
          child: Container(
              margin: const EdgeInsets.all(22),
              width: 135,
              height: 37,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.blue),
                borderRadius: const BorderRadius.all(Radius.circular(6)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 13,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Upload New",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
              width: scr.width * .3,
              height: scr.width * .3,
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
              width: scr.width * .3,
              height: scr.width * .3,
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://img.etimg.com/thumb/msid-69381991,width-650,imgsize-594328,,resizemode-4,quality-100/hacker-1.jpg",
              width: scr.width * .3,
              height: scr.width * .3,
              fit: BoxFit.cover,
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class ProfileDocuments extends StatelessWidget {
  const ProfileDocuments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileFilesScreen()),
              )),
          child: Container(
            margin: const EdgeInsets.all(22),
            width: 135,
            height: 37,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 13,
                ),
                SizedBox(width: 10),
                Text(
                  "Upload New",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileFramedPhoto extends StatelessWidget {
  final String type;
  final double s;
  final double x, y;
  const ProfileFramedPhoto(this.type, this.s, this.x, this.y, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    String t = type[0];
    double fW = scr.width;
    double fH = scr.width;
    double dW = scr.width * s;
    double h = (t == '8' ? dW : (t == "6" ? dW : (t == '5' ? (dW * .96) : dW)));
    double w = (t == '8' ? dW : (t == "6" ? (dW * .9) : (t == '5' ? dW : dW)));
    return Positioned(
      top: fH * y - dW / 2,
      left: fW * x - dW / 2,
      height: h,
      width: w,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CreateMemberScreen(),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset("asset/x" + type + ".png", fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class ProfileFrameLine extends StatelessWidget {
  final double angle;
  final double size;
  const ProfileFrameLine(
    this.angle,
    this.size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Positioned(
      top: scr.width * .5,
      left: scr.width * .5,
      right: scr.width * size,
      child: Transform(
        transform: Matrix4.skewY(0)..rotateZ(angle * (22 / 7)),
        child: Container(
          height: 1,
          color: const Color(0xFFBFBFBF),
        ),
      ),
    );
  }
}

class ProfileFrameLine1 extends StatelessWidget {
  final double angle;
  final double size;
  final double x;
  final double y;
  const ProfileFrameLine1(this.angle, this.size, this.x, this.y, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Positioned(
      top: scr.width * y,
      left: scr.width * x,
      right: scr.width * size,
      child: Transform(
        transform: Matrix4.skewY(0)..rotateZ(angle * (22 / 7)),
        child: Container(
          height: 1,
          color: const Color(0xFFBFBFBF),
        ),
      ),
    );
  }
}
