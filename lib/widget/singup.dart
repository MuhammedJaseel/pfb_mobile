import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class SignUpEachTitle extends StatelessWidget {
  final String title;
  const SignUpEachTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Padding(
      padding: EdgeInsets.only(top: scr.height * .05),
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(211, 43, 43, 43),
          fontSize: 19,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class SignUpEachTextBox1 extends StatelessWidget {
  final String hint;
  final Function fun;
  final TextInputType keyboard;
  const SignUpEachTextBox1(
    this.hint,
    this.fun, {
    Key? key,
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: TextField(
        onChanged: (v) => fun(v),
        keyboardType: keyboard,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),
          contentPadding: const EdgeInsets.all(0),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 155, 155, 155),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        style: const TextStyle(
          color: Color.fromARGB(210, 61, 61, 61),
          fontSize: 18.5,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class SignUpFamillySelecter extends StatefulWidget {
  final Function setheritage;
  const SignUpFamillySelecter(this.setheritage, {Key? key}) : super(key: key);

  @override
  _SignUpFamillySelecterState createState() => _SignUpFamillySelecterState();
}

class _SignUpFamillySelecterState extends State<SignUpFamillySelecter> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Padding(
      padding: EdgeInsets.only(top: scr.height * .03),
      child: Row(
        children: [
          for (var i = 0; i < 2; i++)
            InkWell(
              onTap: () {
                widget.setheritage(i);
                setState(() {
                  selected = i;
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: selected == i ? Colors.blue : Colors.black38,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: selected == i ? Colors.blue : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                  Text(
                    i == 0 ? "Father Hertage" : "Mother Hertage",
                    style: TextStyle(
                      color: selected == i
                          ? const Color.fromARGB(210, 97, 97, 97)
                          : const Color.fromARGB(210, 167, 167, 167),
                      fontSize: 13.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: scr.width * .05),
                ],
              ),
            ),
        ],
      ),
    );
  }
}