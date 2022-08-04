import 'package:cemanting_art/Page%20Bar/akunBar.dart';
import 'package:cemanting_art/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
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
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                    ),
                    
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
              SizedBox(
                height: 35,
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
              print('Pressed');
            },
          ),
                  RaisedButton(
                    onPressed: () {},
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

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}

