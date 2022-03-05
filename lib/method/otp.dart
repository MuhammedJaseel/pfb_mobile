import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/signup.dart';

verifyOtp(props) async {
  Navigator.push(
    props.context,
    MaterialPageRoute(builder: (context) => const SignUpScreen()),
  );
}
