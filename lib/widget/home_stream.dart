import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class HomeEachStream extends StatefulWidget {
  const HomeEachStream({Key? key}) : super(key: key);

  @override
  _HomeEachStreamState createState() => _HomeEachStreamState();
}

class _HomeEachStreamState extends State<HomeEachStream> {
  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);

    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 15),
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
                  "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Muhammed Muneer",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(228, 43, 43, 43),
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "2 hour ago",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(157, 43, 43, 43),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 12),
        Image.network(
          "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Scientific information visualization Desembre 30, 2012 Permutations of variables and axes I’ve been wondering if there could be a system to codify any kind of graphic and the result could be some thing like these icons that show the kind of coordinates of each axe and the nature of the variable that represents. All the permutations up to four variables can be found in chapter.",
            style: TextStyle(
              color: Color.fromARGB(157, 43, 43, 43),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {},
          child: Row(
            children: const [
              SizedBox(width: 10),
              Icon(
                Icons.message_outlined,
                size: 22,
                color: Color.fromARGB(255, 19, 166, 202),
              ),
              SizedBox(width: 8),
              Text(
                "24 Comments",
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 166, 202),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Color.fromARGB(31, 121, 121, 121),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(123, 116, 116, 116),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Image.network(
                        "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: scr.width * .04),
                  const Text(
                    "Reply...",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 129, 129),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.attach_file,
                  size: 22,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 1,
          color: const Color.fromARGB(61, 143, 141, 141),
        ),
      ],
    );
  }
}
