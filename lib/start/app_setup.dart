import 'package:bestcheckout/bar%20related/topbar.dart';
import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/pages/hompage.dart';
import 'package:bestcheckout/pages/checkoutpage.dart';
import 'package:bestcheckout/pages/infopage.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../bar related/bottombaricons.dart';

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
      backgroundColor: bg,
      drawerEnableOpenDragGesture: false,
      appBar: myPurpleBar(),
      body: PageView(
        //stops the ability to scroll between pages offered on the bottom bar
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          //pages listed at bottom in order
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
        items: bottomBarIcons,
      ),
    );
  }
}
