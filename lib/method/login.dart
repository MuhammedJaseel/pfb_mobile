import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/otp.dart';

requestOtp(props) async {
  String phone = props.phoneC.text;
  if (phone.length != 10) {
    props.setState(() => props.error = "Enter a valid number");
    return;
  }
  Navigator.push(
      props.context, MaterialPageRoute(builder: (context) => const OtpPage()));
}
