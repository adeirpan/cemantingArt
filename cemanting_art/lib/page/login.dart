import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 48,
        ),
        child: Form(
            child: ListView(
          children: [
            Center(
              child: Text(
                'MASUK',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/login.png',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 32,
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Password',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 32,
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 69,
            ),
            Container(
              height: 48,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: purpleColor,
                child: Text(
                  'MASUK',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
      bottomSheet: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun?',
              style: greyTextStyle.copyWith(
                color: Color(0xff1C1D1D),
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Buat Akun',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  color: purpleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
