import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/create_timeline.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';

class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  bool edit = false;
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
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Time Line",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    if (!edit)
                      IconButton(
                        onPressed: () => setState(() => edit = true),
                        icon: const Icon(
                          Icons.mode_edit_outlined,
                          size: 34,
                          color: Colors.black54,
                        ),
                      )
                    else
                      InkWell(
                        onTap: () => setState(() => edit = true),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 110, 213, 113),
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scr.height - 140,
              child: ListView(
                children: [
                  for (var i = 0; i < 4; i++)
                    Column(
                      children: [
                        TimeLineEach(i, edit),
                        Container(
                          height: i == 3 ? 80 : 40,
                          width: 2,
                          color: const Color.fromARGB(66, 110, 110, 110),
                        )
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CreateTimelineScreen(),
                            ),
                          );
                        }),
                        child: Container(
                          width: scr.width * .16,
                          height: scr.width * .16,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(31, 128, 128, 128),
                            borderRadius: BorderRadius.all(
                              Radius.circular(scr.width * .15),
                            ),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(31, 76, 76, 76),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const HomeBottemBar(3),
          ],
        ),
      ),
    );
  }
}

class TimeLineEach extends StatelessWidget {
  final int i;
  final bool edit;
  const TimeLineEach(this.i, this.edit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    Widget dataBody = Column(
      crossAxisAlignment:
          i % 2 == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: scr.width * .02,
            vertical: 2,
          ),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Text(
            "12 Jul 2020",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "New Car",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color.fromARGB(255, 35, 35, 35),
            fontWeight: FontWeight.w600,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "A paragraph is a series of related sentences developing a central idea, called the topic.",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: i % 2 == 0 ? TextAlign.start : TextAlign.end,
          style: const TextStyle(
            color: Color.fromARGB(255, 118, 118, 118),
            fontWeight: FontWeight.w600,
            fontSize: 9,
          ),
        ),
      ],
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: scr.width * .32, child: i % 2 == 1 ? dataBody : null),
        InkWell(
          onTap: (() {
            if (edit) {}
          }),
          child: Container(
            width: scr.width * .2,
            height: scr.width * .2,
            margin: EdgeInsets.symmetric(horizontal: scr.width * .03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(scr.width * .15),
              ),
              border: Border.all(
                width: 5,
                color: const Color.fromARGB(31, 47, 47, 47),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(scr.width * .15),
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.indianexpress.com/2016/10/family_759_pixabay.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: edit
                  ? Container(
                      margin: EdgeInsets.only(
                        top: scr.width * .11,
                        left: scr.width * .10,
                        right: scr.width * .01,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(scr.width * .15),
                        ),
                      ),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                        size: scr.width * .035,
                      ),
                    )
                  : null,
            ),
          ),
        ),
        SizedBox(width: scr.width * .32, child: i % 2 == 0 ? dataBody : null),
      ],
    );
  }
}
