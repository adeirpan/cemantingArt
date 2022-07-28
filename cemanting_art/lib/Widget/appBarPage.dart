import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.myTitle});
  final String myTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        myTitle,
        style: blackTextStyle,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: blackButtonColor),
    );
  }
}
