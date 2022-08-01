
import 'package:cemanting_art/onboarding/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:cemanting_art/theme.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return OnBoarding();
        }),
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff222222),
    body: Center(child: Text('CEMANTING ART',
    style: yelowTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
    )),
    );
  }
}
