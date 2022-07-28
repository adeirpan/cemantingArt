import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class PembayaranForm extends StatefulWidget {
  const PembayaranForm({Key? key}) : super(key: key);

  @override
  State<PembayaranForm> createState() => _PembayaranFormState();
}

class _PembayaranFormState extends State<PembayaranForm> {
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
        child: Form(
          child: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
