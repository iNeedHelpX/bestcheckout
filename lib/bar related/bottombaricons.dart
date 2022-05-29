import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

List<BottomBarItem> get bottomBarIcons {
  return <BottomBarItem>[
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
  ];
}
