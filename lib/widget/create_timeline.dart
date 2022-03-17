import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

class TimlineTextBox1 extends StatelessWidget {
  final String hint;
  final Function fun;
  final TextInputType keyboard;
  const TimlineTextBox1(
    this.hint,
    this.fun, {
    Key? key,
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(31, 184, 184, 184),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        onChanged: (v) => fun(v),
        keyboardType: keyboard,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: scr.width * .05),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 155, 155, 155),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: const TextStyle(
          color: Color.fromARGB(210, 99, 99, 99),
          fontSize: 14.5,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class TimlineTextBox2 extends StatelessWidget {
  final String hint;
  final Function fun;
  final TextInputType keyboard;
  const TimlineTextBox2(
    this.hint,
    this.fun, {
    Key? key,
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(31, 184, 184, 184),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        minLines: 4,
        maxLines: 5,
        onChanged: (v) => fun(v),
        keyboardType: keyboard,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: scr.width * .05,
            vertical: 8,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 155, 155, 155),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: const TextStyle(
          color: Color.fromARGB(210, 99, 99, 99),
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class TimelineCreateTitle extends StatelessWidget {
  final String title;
  const TimelineCreateTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scr = getScr(context);
    return Padding(
      padding: EdgeInsets.only(top: scr.height * .02),
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(211, 43, 43, 43),
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
