import 'package:flutter/material.dart';
import 'package:pfb_mobile/module/screen.dart';

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
    Size scr = getScr(context);
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

// class CreateFamilyCounter extends StatelessWidget {
//   final String hint;
//   final Function funUp, funDown;
//   const CreateFamilyCounter(this.hint, this.funUp, this.funDown, {Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       height: 40,
//       alignment: Alignment.bottomLeft,
//       decoration: const BoxDecoration(
//         border: Border(
//           bottom: BorderSide(color: Colors.black26),
//         ),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(
//               hint,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 155, 155, 155),
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           // InkWell(
//           //   onTap: () => funDown(),
//           //   child: const Icon(
//           //     Icons.arrow_downward,
//           //     color: Colors.black38,
//           //     size: 14,
//           //   ),
//           // ),
//           // const SizedBox(width: 6),
//           InkWell(
//             onTap: () => funUp(),
//             child: const Icon(
//               Icons.arrow_upward,
//               color: Colors.black38,
//               size: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
