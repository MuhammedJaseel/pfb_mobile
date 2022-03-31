import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/chat_personal.dart';

class HomeEachStory extends StatelessWidget {
  final Map story;
  const HomeEachStory(this.story, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 130,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: NetworkImage(story['img']),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0x00FFFFFF), Color(0x00FFFFFF), Color(0x7A000000)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              story['name'],
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                "5 m",
                style: TextStyle(color: Color(0xB9FFFFFF), fontSize: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeOnlineStutusEach extends StatelessWidget {
  final Map member;
  const HomeOnlineStutusEach(this.member, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getStatusColor(s) {
      if (s == "Unknown") return Colors.black87;
      if (s == "Online") return Colors.green;
      if (s == "Offline") Colors.red;
      return Colors.orange;
    }

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatPersonalScreen()),
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 17),
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(27)),
          image: DecorationImage(
            image: NetworkImage(member['img']),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomRight,
        child: Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            color: getStatusColor(member['status']),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}

class HometexteditBtn extends StatelessWidget {
  final IconData icon;
  final Function fun;
  const HometexteditBtn(this.icon, this.fun, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => fun(),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(icon, color: const Color(0xC97E7E7E), size: 20),
      ),
    );
  }
}

class HomePostMaker extends StatefulWidget {
  const HomePostMaker({Key? key}) : super(key: key);

  @override
  State<HomePostMaker> createState() => _HomePostMakerState();
}

class _HomePostMakerState extends State<HomePostMaker> {
  @override
  void initState() {
    super.initState();
  }

  bool fieldActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.blue),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "https://1.bp.blogspot.com/-Muc21xaQjYg/XluhYO6f6vI/AAAAAAAAPJw/T51WnNCctz4Vxn_9REzJuftkznfuRGKUgCLcBGAsYHQ/s1600/whatsapp%2Bprofile%2Bpic%2B%25281%2529.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 20),
            const Text(
              "Whats new !",
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        // TextField(autofocus: fieldActive),
        // Visibility(
        //   child:
        //   visible: false,
        //   maintainState: true,
        // ),
        // InkWell(
        //   onTap: (() => setState((() => fieldActive = true))),
        //   child: Container(
        //     height: 100,
        //     width: 200,
        //     color: Colors.black26,
        //   ),
        // ),
        SizedBox(
          child: TextField(
            onChanged: (v) {},
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
              ),
              contentPadding: EdgeInsets.all(0),
              border: InputBorder.none,
              hintText: "Type message..",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 155, 155, 155),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: const TextStyle(
              color: Color.fromARGB(210, 61, 61, 61),
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text(
              "Normal",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color.fromARGB(202, 126, 126, 126),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                children: [
                  HometexteditBtn(Icons.format_bold, () {}),
                  HometexteditBtn(Icons.format_italic, () {}),
                  HometexteditBtn(Icons.format_underline, () {}),
                  HometexteditBtn(Icons.format_strikethrough, () {}),
                  HometexteditBtn(Icons.photo, () {}),
                  HometexteditBtn(Icons.insert_link, () {}),
                ],
              ),
            ),
            Row(
              children: [
                HometexteditBtn(Icons.photo_camera, () {}),
                HometexteditBtn(Icons.attach_file, () {}),
                HometexteditBtn(Icons.location_on, () {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
