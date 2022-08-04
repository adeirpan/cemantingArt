import 'package:cemanting_art/page/ketentuan.dart';
import 'package:cemanting_art/page/pembayaran/pembayaran_sukses.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class PembayaranForm extends StatefulWidget {
  const PembayaranForm({Key? key}) : super(key: key);

  @override
  State<PembayaranForm> createState() => _PembayaranFormState();
}

class _PembayaranFormState extends State<PembayaranForm> {
  int? _value = 1;
  int? _kirim = 1;
  final _formKey = GlobalKey<FormState>();
  final alamatTextFieldController = TextEditingController();

  bool isAcceptedTerm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembayaran',
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat Anda',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    minLines: 5,
                    maxLines: 5,
                    controller: alamatTextFieldController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Ketik alamat anda disini...',
                      // labelText: "Name",
                      border: OutlineInputBorder(),
                      // icon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Alamat Anda Harus Diisi';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pilih Metode Pembayaran',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0xff828282), width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 20, left: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Debit",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _value,
                              activeColor: Color(0xffDBA808),
                              hoverColor: Color(0xff222222),
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              },
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0xff828282), width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 20, left: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cash On Delivery (COD)",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Radio(
                              value: 2,
                              groupValue: _value,
                              activeColor: Color(0xffDBA808),
                              hoverColor: Color(0xff222222),
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              },
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pilih Pengiriman',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0xff828282), width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 20, left: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Express",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _kirim,
                              activeColor: Color(0xffDBA808),
                              hoverColor: Color(0xff222222),
                              onChanged: (value) {
                                setState(() {
                                  _kirim = value as int?;
                                });
                              },
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0xff828282), width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 20, left: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reguler",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Radio(
                              value: 2,
                              groupValue: _kirim,
                              activeColor: Color(0xffDBA808),
                              hoverColor: Color(0xff222222),
                              onChanged: (value) {
                                setState(() {
                                  _kirim = value as int?;
                                });
                              },
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Checkbox(
                          activeColor: Color(0xffDBA808),
                          hoverColor: Color(0xff222222),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: isAcceptedTerm,
                          onChanged: (bool? value) {
                            setState(() {
                              isAcceptedTerm = !isAcceptedTerm;
                            });
                          },
                          // splashRadius: 5,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Setuju dengan',
                        style: greyTextStyle,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return KetentuanPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'ketentuan Cemanting',
                          style: greyTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            // side: BorderSide(color: Colors.red),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(blackButtonColor),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PembayaranSukses();
                              },
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Bayar',
                        style: blackTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
