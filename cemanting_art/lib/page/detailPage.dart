import 'package:cemanting_art/page/pembayaran/pembayaranForm.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Detail Produk",
          style: pageTitle,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 320,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/detailProduk1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Text(
                      'Baju Batik',
                      style: productTitlebold,
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Container(
                      height: 18,
                      width: 22,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_wishlist.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.only(left: 13, top: 4),
                        child: Text(
                          'Save 20%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        )),
                    height: 26,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: yelowColor,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Deskripsi',
                    style: productTitle,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Menggunakan bahan yang sangat nyaman digunakan untuk sehari-hari, Dibuat oleh tangan professional yang membuat terlihat modern dan modis',
                    style: pageText,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Pilihan Warna',
                    style: productTitle,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff7C8FB3),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffB91432),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffDBA808),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Pilihan Ukuran',
                    style: productTitle,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffBDBDBD),
                            border: Border.all(
                              color: blackColor,
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 3,
                              ),
                              child: Text(
                                'S',
                                style: greyTextStyle.copyWith(
                                  color: blackColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: blackColor,
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 3,
                              ),
                              child: Text(
                                'M',
                                style: greyTextStyle.copyWith(
                                  color: blackColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: blackColor,
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 3,
                              ),
                              child: Text(
                                'L',
                                style: greyTextStyle.copyWith(
                                  color: blackColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: greyColor,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rp. 130.000.',
                style: price,
              ),
              Container(
                height: 36,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PembayaranForm();
                        },
                        
                      ),
                      
                    );
                    
                  },
                  
                  child: Text(
                    "Beli",
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            
                          )
                        ),
                      backgroundColor:
                          MaterialStateProperty.all(blackButtonColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
