import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 126,
            ),
            Image.asset(
              'assets/onBoarding1.png',
            ),
            SizedBox(
              height: 54,
            ),
            Text(
              'Selamat Datang Di Cemanting Art',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Cemanting adalah aplikasi yang menyediakan',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'berbagai kerajinan seni',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              height: 48,
              width: 180,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: purpleColor,
                child: Text(
                  'SELANJUTNYA',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
