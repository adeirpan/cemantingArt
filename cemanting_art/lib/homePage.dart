import 'package:cemanting_art/Drawer/flashSale.dart';
import 'package:cemanting_art/Drawer/popular.dart';
import 'package:cemanting_art/Drawer/produkBaru.dart';
import 'package:cemanting_art/Page%20Bar/akunBar.dart';
import 'package:cemanting_art/Page%20Bar/wishListBar.dart';
import 'package:cemanting_art/page/notification.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';

import 'Page Bar/home.dart';
import 'Page Bar/produkBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  String titleBar = '';
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    BarHome(),
    Produk(),
    WishListBar(),
    AkunBar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      titleBar = _selectedIndex == 1
          ? 'Produk'
          : _selectedIndex == 2
              ? 'Wishlist'
              : _selectedIndex == 3
                  ? 'Akun'
                  : '';
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          titleBar,
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NotificationPage();
                }),
              );
            },
            child: Image.asset('assets/icon_notification.png'),
          ),
        ],
        iconTheme: IconThemeData(color: blackButtonColor),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 14,
                ),
                child: Column(
                  // Important: Remove any padding from the ListView.
                  // padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Image.asset('assets/icon_profile.png'),
                          Text(
                            'Ade Irpan Hidayat',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'adeirpan@gmail.com',
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      
                      title: Text(
                        'Produk Populer',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return Popular();
                      }),
                    ),
                  );
                        // Navigator.pushNamed(context, '/history');
                      },
                      shape: Border(
                        bottom: BorderSide(
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Produk Terbaru',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return ProdukBaru();
                      }),
                    ),
                  );
                      },
                      shape: Border(
                        bottom: BorderSide(
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Flash Sale',
                        style: blackTextStyle.copyWith(
                          
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return FlashSale();
                      }),
                    ),
                  );
                        
                      },
                      shape: Border(
                        bottom: BorderSide(
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                'assets/iconlove.png',
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
        selectedItemColor: Color(0xffDBA808),
        onTap: _onItemTapped,
      ),
    );
  }
}
