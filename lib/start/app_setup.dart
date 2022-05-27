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
  int _currentPage = 2;
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
          Container(color: Colors.orange),
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
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            backgroundColorOpacity: 0.1,
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
            activeIconColor: Colors.orange.shade600,
            activeTitleColor: Colors.orange.shade700,
          ),
        ],
      ),
    );
  }
}
