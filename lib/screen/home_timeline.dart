import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/screen/timeline_create.dart';
import 'package:pfb_mobile/screen/timeline_edit.dart';
import 'package:pfb_mobile/screen/timeline_photos.dart';
import 'package:pfb_mobile/widget/home_bottembar.dart';

class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  bool edit = false;

  List timelines = [
    {
      "date": "12 Jul 2020",
      "title": "House Warming",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....",
      "imgs": [
        "https://gravityhomes.in/wp-content/uploads/elementor/thumbs/1-about-gravity-pdhgqtthsh0xkpf5sjzl693xrud3n08dtv96bz6ccs.jpg",
        "https://gravityhomes.in/wp-content/uploads/elementor/thumbs/1-about-gravity-pdhgqtthsh0xkpf5sjzl693xrud3n08dtv96bz6ccs.jpg",
      ],
    },
    {
      "date": "15 Sep 2020",
      "title": "New Car",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....",
      "imgs": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/2022_Maruti_Suzuki_Baleno_Alpha_%28India%29_front_view.jpg/200px-2022_Maruti_Suzuki_Baleno_Alpha_%28India%29_front_view.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Suzuki_Ignis_%28third_generation%29_Facelift_IMG_4450.jpg/200px-Suzuki_Ignis_%28third_generation%29_Facelift_IMG_4450.jpg"
      ],
    },
    {
      "date": "10 Dec 2020",
      "title": "Aayan Borned",
      "desc":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....",
      "imgs": [
        "http://images.agoramedia.com/wte3.0/gcms/Soothe-crying-baby-722x406.jpg?width=414"
      ],
    },
    {
      "date": "10 Dec 2020",
      "title": "New Shop Opened",
      "desc": "",
      "imgs": [
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/0ED2/production/_118149730_mediaitem118148499.jpg",
        "https://www.kare-design.com/wp-content/uploads/2015/08/2.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Comercio_en_la_plaza_del_9_de_abril_de_1947%2C_T%C3%A1nger%2C_Marruecos%2C_2015-12-11%2C_DD_78.JPG/1200px-Comercio_en_la_plaza_del_9_de_abril_de_1947%2C_T%C3%A1nger%2C_Marruecos%2C_2015-12-11%2C_DD_78.JPG",
      ],
    },
  ];

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
                        onTap: () => setState(() => edit = !edit),
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
                            "Done",
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
                  for (var i = 0; i < timelines.length; i++)
                    Column(
                      children: [
                        TimeLineEach(i, edit, timelines[i]),
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
                                  TimelineCreateScreen(timelines),
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
  final Map timeline;
  const TimeLineEach(this.i, this.edit, this.timeline, {Key? key})
      : super(key: key);

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
          child: Text(
            timeline['date'] ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          timeline['title'] ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color.fromARGB(255, 35, 35, 35),
            fontWeight: FontWeight.w600,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          timeline['desc'] ?? '',
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
            if (edit) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimelineEditScreen(timeline),
                ),
              );
            } else {
              if (timeline['imgs'].length > 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TimelinePhotosScreen(context, timeline['imgs']),
                  ),
                );
              }
            }
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
                image: timeline['imgs'].length > 0
                    ? DecorationImage(
                        image: NetworkImage(timeline['imgs'][0]),
                        fit: BoxFit.cover,
                      )
                    : null,
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
