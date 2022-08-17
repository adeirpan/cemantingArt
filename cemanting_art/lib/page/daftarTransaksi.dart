import 'package:cemanting_art/page/pembayaran/pembayaranForm.dart';
import 'package:flutter/material.dart';
import '../Page Bar/akunBar.dart';
import '../theme.dart';

class DaftarTransaksi extends StatefulWidget {
  const DaftarTransaksi({Key? key}) : super(key: key);

  @override
  State<DaftarTransaksi> createState() => _DaftarTransaksiState();
}

class _DaftarTransaksiState extends State<DaftarTransaksi> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Transaksi',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
          
            children: [
                      Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                  
                  child: Container(
                    height: 140,
                    padding: const EdgeInsets.all(0),
                    child: Row(children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://paragram.id/upload/media/entries/2019-07/29/9280-1-87ee13d2b32b3624b8a188b183faef32.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 12,
                        child: Container(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Baju Batik Modern",
                                  style: blackTextStyle.copyWith(
                                      fontSize: 16, fontWeight: FontWeight.w600)),
                                SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Status : Selesai ',
                                    style: greyTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                                  ),
                               
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Harga : RP.130000',
                                    style: greyTextStyle.copyWith(
                                        fontWeight: FontWeight.w500, fontSize: 14),
                                  ),
                                  
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                                        ],
                  ),
                ),
                  ),
              ]
          ),
        ),
            ]
      ),),),);
      


  }
}