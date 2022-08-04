import 'dart:async';

import 'package:cemanting_art/page/detailPage.dart';
import 'package:cemanting_art/page/pembayaran/pembayaranForm.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class PembayaranSukses extends StatefulWidget {
  const PembayaranSukses({Key? key}) : super(key: key);

  @override
  State<PembayaranSukses> createState() => _PembayaranSuksesState();
}

class _PembayaranSuksesState extends State<PembayaranSukses> {
  void initState() {
    super.initState();
    // splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);

    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PembayaranForm()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => DetailProduk()),
          );
        },
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Center(child: Image.asset('assets/logo_pembayaran_sukses.png')),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Pembayaran Berhasil',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Terimakasih telah Berbelanja',
                  style: greyTextStyle,
                ),
              ),
              Center(
                child: Text(
                  'di cemanting',
                  style: greyTextStyle,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
