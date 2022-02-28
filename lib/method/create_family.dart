import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/create_family2.dart';
import 'package:pfb_mobile/screen/create_family3.dart';
import 'package:pfb_mobile/screen/home_home.dart';

createFamily(props, context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CreateFamilyScreen2()),
  );
}

createFamily2(props) {
  Navigator.push(
    props.context,
    MaterialPageRoute(builder: (context) => const CreateFamilyScreen3()),
  );
}

createFamily3(props) {
  Navigator.push(
    props.context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
}
