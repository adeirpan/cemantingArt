import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard(this.product, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 142,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 142,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    '${product.imageUrl}',
                    width: 142,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.name}',
                      style: blackTextStyle,
                    ),
                    Text(
                      '${product.price}',
                      style: blackTextStyle.copyWith(
                        color: yelowTextColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  child: Image.asset('assets/icon_wishlist.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
