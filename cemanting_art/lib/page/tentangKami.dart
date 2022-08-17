import 'package:cemanting_art/Widget/appBarPage.dart';
import 'package:cemanting_art/main.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class TentangKami extends StatefulWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  State<TentangKami> createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Tentang Kami',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Aplikasi ini dibuat untuk memberikan kemudahan bagi konstumer kami dalam bertransaksi di cemanting art.',
                    style: greyTextStyle.copyWith(
                      fontSize: 18,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
