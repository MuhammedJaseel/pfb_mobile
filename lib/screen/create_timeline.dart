import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/create_timeline.dart';

class CreateTimelineScreen extends StatelessWidget {
  const CreateTimelineScreen({Key? key}) : super(key: key);

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
          "Add New",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: TextButton(
              onPressed: () {},
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
            TimlineTextBox1("Select Date", (v) {}),
            const TimelineCreateTitle("Title"),
            TimlineTextBox1("Text here", (v) {}),
            const TimelineCreateTitle("Description"),
            TimlineTextBox2("Text here", (v) {}),
            const TimelineCreateTitle("Add Media"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 5; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
