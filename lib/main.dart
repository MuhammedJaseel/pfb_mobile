import 'package:flutter/material.dart';
import 'package:pfb_mobile/screen/intro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Family Builder',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return const SignUpScreen();
    // return const CreateFamilyScreen();
    // return const HomeScreen();
    return const IntroPage();
  }
}
