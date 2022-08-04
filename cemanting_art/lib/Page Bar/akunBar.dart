import 'package:cemanting_art/page/login.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class AkunBar extends StatelessWidget {
  const AkunBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                Image.asset('assets/icon_profile.png'),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ade Irpan Hidayat',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'adeirpan@gmail.com',
                      style: greyTextStyle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                child: OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(340, 48),
              ),
              icon: Icon(
                Icons.edit,
                size: 20,
                color: Color(0xff4F4F4F),
              ),
              label: Text(
                "Edit Akun",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
            SizedBox(
              height: 16,
            ),
            Container(
                child: OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(340, 48),
              ),
              icon: Icon(
                Icons.logout,
                size: 20,
                color: Color(0xff4F4F4F),
              ),
              label: Text(
                "Keluar",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
