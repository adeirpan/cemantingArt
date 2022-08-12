import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          'Flash Sale',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
     body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
             Center(
                child: Container(
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/Pink Video Summer Sale Discounts.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductCard(
                  Product(
                    name: 'Baju Batik',
                    price: 130000,
                    imageUrl: 'assets/produk1.png',
                    discount: 20,
                    // isWhishProduct: true,
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
                    discount: 10,
                    // isWhishProduct: true,
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
                    discount: 10,
                    // isWhishProduct: true,
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
                    discount: 10,
                    // isWhish1Product: true,
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
