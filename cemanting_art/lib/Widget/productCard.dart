import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/page/detailPage.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard(this.product, {Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isClicked = false;

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
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return DetailProduk();
                      }),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset(
                      '${widget.product.imageUrl}',
                      width: 142,
                    ),
                    // discount card    akan muncul ketika discount lebih dari nol
                    if (widget.product.discount > 0)
                      (Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          right: 7,
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 20,
                            width: 35,
                            decoration: BoxDecoration(
                              color: yelowColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                '${widget.product.discount}%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.product.name}',
                      style: blackTextStyle,
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id', decimalDigits: 0, symbol: "Rp. ")
                          .format(widget.product.price),
                      // '${widget.product.price}',
                      style: blackTextStyle.copyWith(
                        color: yelowColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: Image.asset(
                    isClicked
                        ? 'assets/icon_wishlistActive.png'
                        : 'assets/icon_wishlist.png',
                    // height: 18,
                    // width: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
