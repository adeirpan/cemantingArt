import 'package:cemanting_art/Page%20Bar/akunBar.dart';
import 'package:cemanting_art/homePage.dart';
import 'package:cemanting_art/onboarding/onBoarding.dart';
import 'package:cemanting_art/page/login.dart';
import 'package:cemanting_art/page/notification.dart';
import 'package:cemanting_art/page/pembayaran/pembayaranForm.dart';
import 'package:cemanting_art/page/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: AkunBar(),
      home: HomePage(),
    );
  }
}
