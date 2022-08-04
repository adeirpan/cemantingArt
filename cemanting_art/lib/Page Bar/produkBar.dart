import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/Widget/searchBar.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:flutter/material.dart';

class Produk extends StatefulWidget {
  const Produk({Key? key}) : super(key: key);

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SearchBar(),
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
                    discount: 0,
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
                    discount: 0,
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
                    discount: 0,
                    // isWhishProduct: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
