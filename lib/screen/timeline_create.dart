import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/create_timeline.dart';

//ignore: must_be_immutable
class TimelineCreateScreen extends StatelessWidget {
  List timelines;
  TimelineCreateScreen(this.timelines, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    Map tempTimeline = {"date": "", "title": "", "desc": "", "imgs": []};
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.black45, size: 35),
        elevation: 0,
        title: const Text(
          "Add New",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: TextButton(
              onPressed: () {
                // timelines.add(tempTimeline);
                Navigator.pop(context);
              },
              child: const Text(
                "Create",
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
            ),
            const TimelineCreateTitle("Title"),
            TimlineTextBox1(
              "Text here",
              (v) => tempTimeline['date'] = v,
            ),
            const TimelineCreateTitle("Description"),
            TimlineTextBox2(
              "Text here",
              (v) => tempTimeline['date'] = v,
            ),
            const TimelineCreateTitle("Add Media"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            )
          ],
        ),
      ),
    );
  }
}
