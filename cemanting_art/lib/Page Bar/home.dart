import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/Widget/searchBar.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class BarHome extends StatefulWidget {
  const BarHome({Key? key}) : super(key: key);

  @override
  State<BarHome> createState() => _BarHomeState();
}

class _BarHomeState extends State<BarHome> {
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
                      onTap: () {},
                      child: Container(
                        height: 38,
                        width: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: blackButtonColor,
                        ),
                        child: Center(
                          child: Text(
                            'Popular',
                            style: greyTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,
                        width: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                            color: blackColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Baju',
                            style: greyTextStyle.copyWith(
                              color: blackColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,
                        width: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                            color: blackColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sepatu',
                            style: greyTextStyle.copyWith(
                              color: blackColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,
                        width: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                            color: blackColor,
                          ),
                        ),
                        // color: Color(0xff222222),
                        // width: 40,
                        child: Center(
                          child: Text(
                            'Tas',
                            style: greyTextStyle.copyWith(
                              color: blackColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    Product(
                      name: 'Baju Batik',
                      price: 130000,
                      imageUrl: 'assets/produk1.png',
                      discount: 0,
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  ProductCard(
                    Product(
                      name: 'Daster Batik',
                      price: 115000,
                      imageUrl: 'assets/produk2.png',
                      discount: 0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    Product(
                      name: 'Baju Batik',
                      price: 130000,
                      imageUrl: 'assets/produk1.png',
                      discount: 0,
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  ProductCard(
                    Product(
                      name: 'Daster Batik',
                      price: 115000,
                      imageUrl: 'assets/produk2.png',
                      discount: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
