import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class ChatBottemBar extends StatelessWidget {
  const ChatBottemBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          SizedBox(width: scr.width * .01),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: scr.width * .02,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black12),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (() {}),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Icon(Icons.face, color: Colors.black12, size: 26),
                  ),
                ),
                SizedBox(width: scr.width * .93 - 142),
                InkWell(
                  onTap: (() {}),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Icon(
                      Icons.attach_file,
                      color: Colors.black12,
                      size: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Icon(Icons.camera_alt, color: Colors.black12, size: 30),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Icon(Icons.mic, color: Colors.blue, size: 30),
            ),
          ),
          SizedBox(width: scr.width * .02),
        ],
      ),
    );
  }
}
