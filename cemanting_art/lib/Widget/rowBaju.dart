import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:flutter/material.dart';

class RowBaju extends StatelessWidget {
  const RowBaju({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
