import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/create_timeline.dart';

//ignore: must_be_immutable
class TimelineEditScreen extends StatelessWidget {
  Map timeline;
  TimelineEditScreen(this.timeline, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    Map tempTimeline = timeline;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text(
          "Edit Timeline",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: TextButton(
              onPressed: () {
                timeline = tempTimeline;
                Navigator.pop(context);
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: scr.width * .06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TimelineCreateTitle("Date"),
            TimlineTextBox1(
              "Select Date",
              (v) => tempTimeline['date'] = v,
              text: timeline['date'],
            ),
            const TimelineCreateTitle("Title"),
            TimlineTextBox1(
              "Text here",
              (v) => tempTimeline['title'] = v,
              text: timeline['title'],
            ),
            const TimelineCreateTitle("Description"),
            TimlineTextBox2(
              "Text here",
              (v) => tempTimeline['desc'] = v,
              text: timeline['desc'],
            ),
            const TimelineCreateTitle("Add Media"),
            SizedBox(
              width: scr.width * .88,
              height: scr.width * .15 + 16,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i = 0; i < timeline["imgs"].length; i++)
                    InkWell(
                      onTap: () {
                        tempTimeline["imgs"].removeAt(i);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 4,
                        ),
                        width: scr.width * .15,
                        height: scr.width * .15,
                        decoration: BoxDecoration(
                          color: const Color(0x1F535353),
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(timeline["imgs"][i]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Icon(
                          Icons.delete_outline,
                          color: Color(0xFFFFFFFF),
                          size: 25,
                        ),
                      ),
                    ),
                  InkWell(
                    onTap: () async {
                      final ImagePicker _picker = ImagePicker();
                      final XFile? image =
                          await _picker.pickImage(source: ImageSource.gallery);
                      final XFile? photo =
                          await _picker.pickImage(source: ImageSource.camera);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      width: scr.width * .15,
                      height: scr.width * .15,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(31, 83, 83, 83),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: const Icon(
                        Icons.add_rounded,
                        color: Colors.black12,
                        size: 37,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
