import 'package:flutter/material.dart';
import 'package:pfb_mobile/method/create_family.dart';
import 'package:pfb_mobile/module/screen.dart';
import 'package:pfb_mobile/widget/create_family.dart';
import 'package:pfb_mobile/widget/singup.dart';

class CreateFamilyScreen2 extends StatelessWidget {
  const CreateFamilyScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 24),
            height: 80,
            width: scr.width,
            child: SafeArea(
                child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black38,
                    size: 30,
                  ),
                ),
                const Text(
                  "Create Family",
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: scr.width * .05),
            height: scr.height - 80,
            width: scr.width,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 16),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Muhammed Ammer",
                            style: TextStyle(
                              color: Color.fromARGB(255, 24, 24, 24),
                              fontSize: 21.5,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Vadakan Veettil",
                            style: TextStyle(
                              color: Color.fromARGB(255, 24, 24, 24),
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Mother Heritage",
                            style: TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: scr.width * .24,
                      height: scr.width * .24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(scr.width * .12),
                        ),
                        color: const Color.fromARGB(31, 117, 117, 117),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black26,
                        size: scr.width * .18,
                      ),
                    ),
                  ],
                ),
                const SignUpEachTitle("Add Sibilings"),
                const CreateFamily2Body()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CreateFamily2Body extends StatefulWidget {
  const CreateFamily2Body({Key? key}) : super(key: key);

  @override
  _CreateFamily2BodyState createState() => _CreateFamily2BodyState();
}

class _CreateFamily2BodyState extends State<CreateFamily2Body> {
  String brotherCount = '';
  String sisterCount = '';
  List members = [];

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: scr.width * .28,
              child: SignUpEachTextBox1(
                'Brother Count',
                (v) => brotherCount = v,
                keyboard: TextInputType.number,
              ),
            ),
            const SizedBox(width: 17),
            SizedBox(
              width: scr.width * .28,
              child: SignUpEachTextBox1(
                'Sisters Count',
                (v) => sisterCount = v,
                keyboard: TextInputType.number,
              ),
            ),
            const SizedBox(width: 17),
            Expanded(
              child: InkWell(
                onTap: (() {
                  try {
                    var bc = int.parse(brotherCount);
                    var sc = int.parse(sisterCount);
                    members = [];
                    for (var i = 0; i < (bc > sc ? bc : sc); i++) {
                      if (i < bc) members.add({"type": "b"});
                      if (i < sc) members.add({"type": "s"});
                      setState(() {});
                    }
                  } catch (e) {
                    return;
                  }
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color(0xFF117BD3),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        for (var i = 0; i < members.length; i++)
          Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: scr.width - 185,
                    child: SignUpEachTextBox1(
                        (members[i]['type'] == "b" ? "Brother" : "Sister") +
                            ' name',
                        (v) {}),
                  ),
                  CreateFamilyCheckBox("Mark Death", (v) {})
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: scr.width * .32,
                    child: CreateDatePicker1('Death Date', (v) {}),
                  ),
                ],
              ),
            ],
          ),
        SizedBox(height: scr.height * .1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() => createFamily2(this)),
              child: Container(
                width: scr.width * .7,
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF117BD3),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: scr.height * .15),
      ],
    );
  }
}
