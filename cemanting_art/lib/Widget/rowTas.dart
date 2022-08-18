import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:flutter/material.dart';

class RowTas extends StatelessWidget {
  const RowTas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProductCard(
          Product(
            name: 'Tas 2',
            price: 130000,
            imageUrl: 'assets/tas1.jpg',
            discount: 0,
          ),
        ),
        SizedBox(
          width: 36,
        ),
        ProductCard(
          Product(
            name: 'Tas 1',
            price: 115000,
            imageUrl: 'assets/tas2.jpg',
            discount: 0,
          ),
        ),
      ],
    );
  }
}
