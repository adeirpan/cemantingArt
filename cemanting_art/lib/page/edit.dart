import 'package:cemanting_art/Page%20Bar/akunBar.dart';
import 'package:cemanting_art/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool _login = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [],
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://www.leisureopportunities.co.uk/images/995586_746594.jpg",
                              ))),
                              
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                           
                            color: Color(0xff222222),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                  'Username',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  
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
                  keyboardType: TextInputType.text,
                ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 OutlinedButton(
                  style: OutlinedButton.styleFrom(
            side: BorderSide(color: Color(0xff222222), width: 2),padding: EdgeInsets.symmetric(horizontal: 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),),
          ),
            child: Text('BATAL', style: blackTextStyle.copyWith(fontSize: 14),),
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AkunBar();
                          },
                        ),
                      );
            },
          ),
                  RaisedButton(
                    onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AkunBar();
                          },
                        ),
                      );},
                    color: Color(0xff222222),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "SIMPAN",
                      style: blackTextStyle.copyWith(
                          fontSize: 14,
              
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

 
  
}

