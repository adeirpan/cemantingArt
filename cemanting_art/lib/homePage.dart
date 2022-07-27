import 'package:cemanting_art/Page%20Bar/wishListBar.dart';
import 'package:cemanting_art/page/home.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

import 'Page Bar/home.dart';
import 'Page Bar/produkBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    BarHome(),
    Produk(),
    WishListBar(),
    Text(
      'Ini Halaman Akun',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: greyColor,
        unselectedLabelStyle: TextStyle(
          color: greyColor,
        ),
        unselectedFontSize: 14.0,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/icon_wishlist.png',
              ),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
