import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/pages/homepage.dart';
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
      body: PageView(
        controller: _pageController,
        children: [
          //pages
          Container(color: Colors.blue),
          HomePage(),
          Container(color: Colors.greenAccent.shade700),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: textgreyblue,
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
            activeColor: Colors.blue,
            activeTitleColor: Colors.blue.shade600,
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
            activeColor: Colors.greenAccent.shade700,
          ),
        ],
      ),
    );
  }
}
