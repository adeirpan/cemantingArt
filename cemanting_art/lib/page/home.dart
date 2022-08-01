import 'package:cemanting_art/Widget/productCard.dart';
import 'package:cemanting_art/model/product.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icon_notification.png'),
          ),
        ],
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView(
            children: [
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
              // iklan
              Container(
                height: 100,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Image.asset(
                  'assets/iklan.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                    ),
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
              ),
              const SizedBox(
                height: 20,
              ),
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
                    const SizedBox(
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
                    const SizedBox(
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
                    const SizedBox(
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
              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    Product(
                      name: 'Baju Batik',
                      price: 130000,
                      imageUrl: 'assets/produk1.png',
                      discount: 0,
                    ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    Product(
                      name: 'Baju Batik',
                      price: 130000,
                      imageUrl: 'assets/produk1.png',
                      discount: 0,
                    ),
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
