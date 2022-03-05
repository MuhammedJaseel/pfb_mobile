import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class ProfileFilesScreen extends StatelessWidget {
  const ProfileFilesScreen({Key? key}) : super(key: key);

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
          "Select File",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < 6; i++)
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: scr.width * .05,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset("asset/icon_pdf.png", width: 50),
                    const SizedBox(width: 10),
                    const Text(
                      "It is test dummy data for desting.pdf",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(150, 0, 0, 0),
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
