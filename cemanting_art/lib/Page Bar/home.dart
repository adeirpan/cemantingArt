import 'package:cemanting_art/Widget/menuButtonCard.dart';
import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/Widget/rowBaju.dart';
import 'package:cemanting_art/Widget/rowSepatu.dart';
import 'package:cemanting_art/Widget/rowTas.dart';
import 'package:cemanting_art/Widget/searchBar.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

import '../model/menuButton.dart';

class BarHome extends StatefulWidget {
  const BarHome({Key? key}) : super(key: key);

  @override
  State<BarHome> createState() => _BarHomeState();
}

class _BarHomeState extends State<BarHome> {
  int selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Hai,',
                style: greyTextStyle,
              ),
              Text(
                'Ade Irpan',
                style: greyTextStyle.copyWith(
                  color: blackColor,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              // iklan
              Center(
                child: Container(
                  height: 100,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/iklan.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //search bar

              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedMenu = 0;
                        });
                      },
                      child: MenuButtonCard(
                          menuButton: MenuButton(
                              id: 0,
                              selectedMenu: selectedMenu,
                              buttonName: 'Popular')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedMenu = 1;
                        });
                      },
                      child: MenuButtonCard(
                          menuButton: MenuButton(
                              id: 1,
                              selectedMenu: selectedMenu,
                              buttonName: 'Baju')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedMenu = 2;
                        });
                      },
                      child: MenuButtonCard(
                          menuButton: MenuButton(
                              id: 2,
                              selectedMenu: selectedMenu,
                              buttonName: 'Sepatu')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedMenu = 3;
                        });
                      },
                      child: MenuButtonCard(
                        menuButton: MenuButton(
                            id: 3,
                            selectedMenu: selectedMenu,
                            buttonName: 'Tas'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              selectedMenu == 0
                  ? Column(
                      children: [
                        RowBaju(),
                        RowTas(),
                        RowSepatu(),
                      ],
                    )
                  : selectedMenu == 1
                      ? Column(
                          children: [
                            RowBaju(),
                            RowBaju(),
                          ],
                        )
                      : selectedMenu == 2
                          ? Column(
                              children: [
                                RowSepatu(),
                                RowSepatu(),
                              ],
                            )
                          : selectedMenu == 3
                              ? Column(
                                  children: [
                                    RowTas(),
                                    RowTas(),
                                  ],
                                )
                              : Column(
                                  children: [
                                    RowSepatu(),
                                    RowSepatu(),
                                  ],
                                )
            ],
          ),
        ),
      ),
    );
  }
}
