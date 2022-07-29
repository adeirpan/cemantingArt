import 'package:cemanting_art/page/pembayaran/pembayaran_sukses.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class PembayaranForm extends StatefulWidget {
  const PembayaranForm({Key? key}) : super(key: key);

  @override
  State<PembayaranForm> createState() => _PembayaranFormState();
}

class _PembayaranFormState extends State<PembayaranForm> {
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
        actions: [],
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alamat Anda'),
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
                  Row(
                    children: [
                      Icon(Icons.credit_card),
                      SizedBox(
                        width: 16,
                      ),
                      Text('Debit'),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 6,
                    color: Color(0xff828282),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/cil_cash.png'),
                      SizedBox(
                        width: 16,
                      ),
                      Text('Cash On Delivery (COD)'),
                    ],
                  ),
                  SizedBox(
                    height: 40,
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
                      Text('Setuju dengan ketentuan Cemanting'),
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
                            borderRadius: BorderRadius.circular(18.0),
                            // side: BorderSide(color: Colors.red),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(blackButtonColor),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
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
