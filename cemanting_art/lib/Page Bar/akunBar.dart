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
              height: 48,
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: greyColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Edit Akun',
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
              color: Color(0xff828282),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.logout,
                  color: greyColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Keluar',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    color: greyColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
