import 'package:cemanting_art/Widget/appBarPage.dart';
import 'package:cemanting_art/main.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class TentangKami extends StatefulWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  State<TentangKami> createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Tentang Kami',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suscipit nullam aliquet scelerisque quam id vitae lectus. Libero, ut amet risus habitasse purus ipsum egestas ut. Est viverra arcu commodo pulvinar ipsum euismod morbi fermentum risus. Vitae pretium elementum hendrerit netus at.',
                    style: greyTextStyle.copyWith(
                      fontSize: 18,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
