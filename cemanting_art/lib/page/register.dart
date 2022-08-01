import 'package:cemanting_art/page/login.dart';
import 'package:cemanting_art/page/register.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _konfirm = true;
  bool _regis =  true;
  final _formKey = GlobalKey<FormState>();
  final usernameTextFieldController = TextEditingController();
  final emailTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();
  final retypePasswordTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 48,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'BUAT AKUN',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset(
                    'assets/login.png',
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Username',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  controller: usernameTextFieldController,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan username yang sesuai';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Email',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  controller: emailTextFieldController,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email anda belum diisi!';
                    }
                    if (value != null && !EmailValidator.validate(value)) {
                      return "Masukkan Email yang valid";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: [AutofillHints.email],
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
                TextFormField(
                  controller: passwordTextFieldController,
                  autofocus: true,
                  obscureText: _regis,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                    icon: Icon(
                        _regis ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _regis = !_regis;
                      });
                    }),
                    border: OutlineInputBorder(),
                    
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password belum diisi';
                    }
                    if (value.length < 7) {
                      return 'Password setidaknya terdiri dari 8 karakter';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Konfirmasi Password',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  controller: retypePasswordTextFieldController,
                  obscureText: _konfirm,
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                    icon: Icon(
                        _konfirm ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _konfirm = !_konfirm;
                      });
                    }),
                    border: OutlineInputBorder(),
                    
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ketik ulang password anda';
                    }
                    if (value != passwordTextFieldController.text) {
                      return "Password tidak sesuai";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 69,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text('berhasil Register'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            });
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: blackButtonColor,
                    child: Text(
                      'BUAT AKUN',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                // paling bawah
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun?',
                        style: greyTextStyle.copyWith(
                          color: Color(0xff1C1D1D),
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return Login();
                              }),
                            ),
                          );
                        },
                        child: Text(
                          'Masuk',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            color: yelowColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
