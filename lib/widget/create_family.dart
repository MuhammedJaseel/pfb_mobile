import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:pfb_mobile/module/date_time.dart';

class CreateFamilyCheckBox extends StatefulWidget {
  final String title;
  final Function fun;
  const CreateFamilyCheckBox(this.title, this.fun, {Key? key})
      : super(key: key);

  @override
  _CreateFamilyCheckBoxState createState() => _CreateFamilyCheckBoxState();
}

class _CreateFamilyCheckBoxState extends State<CreateFamilyCheckBox> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.fun(!selected);
        setState(() => selected = !selected);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: selected ? Colors.green : Colors.white,
              border: Border.all(
                width: 1,
                color: selected ? Colors.green : Colors.black38,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(3)),
            ),
            alignment: Alignment.center,
            child: selected
                ? const Icon(Icons.check, color: Colors.white, size: 11)
                : const SizedBox(),
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: selected
                  ? const Color.fromARGB(210, 97, 97, 97)
                  : const Color.fromARGB(210, 167, 167, 167),
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class CreateDatePicker1 extends StatefulWidget {
  final String hint;
  final Function fun;
  final bool disabled;
  const CreateDatePicker1(
    this.hint,
    this.fun, {
    Key? key,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<CreateDatePicker1> createState() => _CreateDatePicker1State();
}

class _CreateDatePicker1State extends State<CreateDatePicker1> {
  String? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          onConfirm: (date) {
            setState(() => selected = dateToMyFormat(date));
            widget.fun(selected);
          },
          currentTime: DateTime.now(),
        );
      }),
      child: Container(
        height: 38,
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(bottom: 2),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black26,
            ),
          ),
        ),
        child: Text(
          selected ?? widget.hint,
          style: const TextStyle(
            color: Color.fromARGB(255, 155, 155, 155),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}




      // child: TextField(
      //   onChanged: (v) => fun(v),
      //   keyboardType: keyboard,
      //   decoration: InputDecoration(
      //     enabledBorder: const UnderlineInputBorder(
      //       borderSide: BorderSide(color: Colors.black26),
      //     ),
      //     focusedBorder: const UnderlineInputBorder(
      //       borderSide: BorderSide(color: Colors.cyan),
      //     ),
      //     contentPadding: const EdgeInsets.all(0),
      //     border: InputBorder.none,
      //     hintText: hint,
      //     hintStyle: const TextStyle(
      //       color: Color.fromARGB(255, 155, 155, 155),
      //       fontSize: 14,
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      //   style: const TextStyle(
      //     color: Color.fromARGB(210, 61, 61, 61),
      //     fontSize: 18.5,
      //     fontWeight: FontWeight.w800,
      //   ),
      // ),