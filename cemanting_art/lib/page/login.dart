import 'package:cemanting_art/homePage.dart';
import 'package:cemanting_art/page/register.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _login = true;
  
  final _formKey = GlobalKey<FormState>();
  final emailTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();

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
                      return 'Please input your email!';
                    }
                    if (value != null && !EmailValidator.validate(value)) {
                      return "Enter a Valid Email";
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
                  obscureText: _login,
                
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                    icon: Icon(
                        _login ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _login = !_login;
                      });
                    }),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'input password';
                    }
                    if (value.length < 7) {
                      return 'Password must be at least 7 characters';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 69,
                ),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                      // if (_formKey.currentState!.validate()) {
                      //   showDialog(
                      //       context: context,
                      //       builder: (BuildContext context) {
                      //         return AlertDialog(
                      //           content: Text('berhasil login'),
                      //           actions: <Widget>[
                      //             TextButton(
                      //               onPressed: () =>
                      //                   Navigator.pop(context, 'OK'),
                      //               child: const Text('OK'),
                      //             ),
                      //           ],
                      //         );
                      //       });
                      // }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: blackButtonColor,
                    child: Text(
                      'MASUK',
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
                Container(
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return Register();
                              }),
                            ),
                          );
                        },
                        child: Text(
                          'Buat Akun',
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
      // bottomSheet:
    );
  }
}
