import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/create_family.dart';

userSignUp(props, context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateFamilyScreen()),
    );
}
