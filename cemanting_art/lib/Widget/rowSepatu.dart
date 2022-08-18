import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:flutter/material.dart';

class RowSepatu extends StatelessWidget {
  const RowSepatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProductCard(
          Product(
            name: 'Sepatu 1',
            price: 100000,
            imageUrl: 'assets/sepatu1.jpg',
            discount: 0,
          ),
        ),
        SizedBox(
          width: 36,
        ),
        ProductCard(
          Product(
            name: 'Sepatu 2',
            price: 200000,
            imageUrl: 'assets/sepatu2.jpg',
            discount: 0,
          ),
        ),
      ],
    );
  }
}
