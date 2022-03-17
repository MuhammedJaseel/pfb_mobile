import 'package:flutter/material.dart';

class HomeEachStory extends StatelessWidget {
  const HomeEachStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 130,
      width: 105,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: NetworkImage(
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/family-background-design-template-29ab2d09ab60b428d95a9a6391b3c5fb_screen.jpg?ts=1625462116",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(0, 255, 255, 255),
              Color.fromARGB(0, 255, 255, 255),
              Color.fromARGB(123, 0, 0, 0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Muhammed Jaseel",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                "5 m",
                style: TextStyle(
                  color: Color.fromARGB(186, 255, 255, 255),
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeOnlineStutusEach extends StatelessWidget {
  const HomeOnlineStutusEach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      height: 54,
      width: 54,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(27)),
        image: DecorationImage(
          image: NetworkImage(
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/family-background-design-template-29ab2d09ab60b428d95a9a6391b3c5fb_screen.jpg?ts=1625462116",
          ),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomRight,
      child: Container(
        height: 14,
        width: 14,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          color: Colors.green,
          borderRadius: const BorderRadius.all(Radius.circular(7)),
        ),
      ),
    );
  }
}

class HometexteditBtn extends StatelessWidget {
  final IconData icon;
  final Function fun;
  const HometexteditBtn(this.icon, this.fun, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => fun(),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(
          icon,
          color: const Color.fromARGB(202, 126, 126, 126),
          size: 20,
        ),
      ),
    );
  }
}
  