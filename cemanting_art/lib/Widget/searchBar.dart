import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 90,
          child: TextField(       
            decoration: InputDecoration(
              hintText: "Cari Barang Kamu .....",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: blackButtonColor,
          ),
          child: Image.asset(
            'assets/icon_search.png',
            // height: 35,
            // width: 35,
            // fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
