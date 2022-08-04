import 'package:cemanting_art/Widget/appBarPage.dart';
import 'package:cemanting_art/main.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Notifikasi',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [],
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.asset('assets/icon_notification2.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Selamat datang di cemanting',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 5,
                color: Color(0xff828282),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.asset('assets/icon_notification2.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Selamat datang di cemanting',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
