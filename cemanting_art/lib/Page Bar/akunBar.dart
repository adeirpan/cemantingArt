import 'package:cemanting_art/page/daftarTransaksi.dart';
import 'package:cemanting_art/page/edit.dart';
import 'package:cemanting_art/page/login.dart';
import 'package:cemanting_art/page/tentangKami.dart';
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
                Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://www.leisureopportunities.co.uk/images/995586_746594.jpg",
                              ))),
                              
                    ),
                    SizedBox(
                      width: 20,
                    ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gamelab',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'gamelab@gmail.com',
                      style: greyTextStyle.copyWith(

                        fontSize: 14
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                child: FlatButton(
                  
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>EditProfilePage()),
                );
              },
             
        child: Container(
          child:Row(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.edit,
                  size: 20,
                  color: Color(0xff4F4F4F),)
              ),
              Container(
                  margin: const EdgeInsets.only( left: 10.0 ),
                  child: Text(
                    "Edit Akun",
                    style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                  )
              )
            ],
          ),
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0)
        )
            )),
            Divider(
               thickness: 1,
               color: Color(0xff4F4F4F),
            ),
            Container(
              
                child: FlatButton(
                  
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DaftarTransaksi()),
                  
                );
              },
              child: Container(
          child:Row(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.receipt_long,
                  size: 20,
                  color: Color(0xff4F4F4F),)
              ),
              Container(
                  margin: const EdgeInsets.only( left: 10.0 ),
                  child: Text(
                    "Daftar Transaksi",
                    style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                  )
              )
            ],
          ),
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0)
        )
            )),
            Divider(
               thickness: 1,
               color: Color(0xff4F4F4F),
            ),
            Container(
              
                child: FlatButton(
              onPressed: () {
                showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text("Silakan Hubungi Nomor 081xxxxxxxxx"),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: Text('OK', style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                                        
                                      ),
                                    ],
                                  );
                                });
              },
              
              child: Container(
                child:Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.call,
                        size: 20,
                        color: Color(0xff4F4F4F),)
                    ),
                    Container(
                        margin: const EdgeInsets.only( left: 10.0 ),
                        child: Text(
                          "Layanan Kami",
                          style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                        )
                )
            ],
          ),
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0)
        )
            )),
             Divider(
               thickness: 1,
               color: Color(0xff4F4F4F),
            ),
            Container(
              
                child: FlatButton(                  
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TentangKami()),
                  
                );
              },
              child: Container(
          child:Row(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.info,
                  size: 20,
                  color: Color(0xff4F4F4F),)
              ),
              Container(
                  margin: const EdgeInsets.only( left: 10.0 ),
                  child: Text(
                    "Tentang Kami",
                    style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                  )
              )
            ],
          ),
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0)
        )
            )),
            SizedBox(
              height: 200,
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
                            return Login();
                          },
                        ),
                      );
            
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: blackButtonColor,
                    child: Text(
                      'Keluar',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                
          ],
        ),
      ),
    );
  }
}
