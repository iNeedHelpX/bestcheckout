import 'package:bestcheckout/bar%20related/topbar.dart';
import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/pages/checkout.dart';
import 'package:bestcheckout/pages/checkoutpage.dart';
import 'package:bestcheckout/pages/infopage.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class AppSetup extends StatefulWidget {
  AppSetup({Key? key}) : super(key: key);

  @override
  State<AppSetup> createState() => _AppSetupState();
}

class _AppSetupState extends State<AppSetup> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenpastel,
      appBar: myPurpleBar(),
      body: PageView(
        controller: _pageController,
        children: [
          //pages
          HomePage(),
          CheckoutPage(),
          InfoPage(),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: textturq3,
        height: 90,
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: textgreyblue,
            activeTitleColor: containerback,
          ),
          BottomBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            title: Text('checkout'),
            activeColor: tabicon,
          ),
          BottomBarItem(
            icon: Icon(Icons.info_rounded),
            title: Text('Information'),
            backgroundColorOpacity: 0.1,
            activeColor: textpurple,
          ),
        ],
      ),
    );
  }
}
