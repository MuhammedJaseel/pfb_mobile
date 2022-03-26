import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class TimelinePhotosScreen extends StatefulWidget {
  final BuildContext pContext;
  final List<String> images;
  const TimelinePhotosScreen(this.pContext, this.images, {Key? key})
      : super(key: key);

  @override
  State<TimelinePhotosScreen> createState() => _TimelinePhotosScreenState();
}

class _TimelinePhotosScreenState extends State<TimelinePhotosScreen> {
  List<String> images = [];

  int image = 0;
  double lineLength = 0;
  bool isDistroyed = false;
  int index = 0;

  loadStatus() async {
    for (index = 0; index < images.length; index++) {
      if (isDistroyed) break;
      setState(() => image = index);
      for (lineLength = 0; lineLength < 1; lineLength = lineLength + .01) {
        if (isDistroyed) break;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 20));
      }
    }
    if (!isDistroyed) Navigator.pop(widget.pContext);
  }

  @override
  void initState() {
    images = widget.images;
    loadStatus();
    super.initState();
  }

  @override
  void dispose() {
    isDistroyed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(images[image]),
            fit: BoxFit.contain
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < images.length; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3,
                        vertical: 20,
                      ),
                      height: 3,
                      width: scr.width / images.length - 8,
                      decoration: BoxDecoration(
                        color: i < image ? Colors.white : Colors.white60,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Row(
                        children: [
                          if (!(i > image))
                            Container(
                              height: 3,
                              width:
                                  (scr.width / images.length - 8) * lineLength,
                              decoration: const BoxDecoration(
                                color: Colors.white70,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (() {
                    if (image > 0) {
                      setState(() {
                        image--;
                        index--;
                        lineLength = 0;
                      });
                    }
                  }),
                  child: SizedBox(
                    width: scr.width * .3,
                    height: scr.height - 100,
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (image < images.length - 1) {
                      setState(() {
                        image++;
                        index++;
                        lineLength = 0;
                      });
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    width: scr.width * .7,
                    height: scr.height - 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
