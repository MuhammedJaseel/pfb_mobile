import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

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
                    fontSize: 14.5,
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
              "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
              width: scr.width * .3,
              height: scr.width * .3,
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
              width: scr.width * .3,
              height: scr.width * .3,
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
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
            ),
          ),
        ),
      ],
    );
  }
}
