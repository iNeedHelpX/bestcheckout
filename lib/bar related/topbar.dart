import 'package:bestcheckout/colors/bluepurple_gradient.dart';
import 'package:flutter/material.dart';

AppBar myPinkAppBar() {
  return AppBar(
    title: Text("Best checkout", style: ,),
    centerTitle: true,
    toolbarHeight: 200,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: bluePurpleGrad(),
      ),
    ),
  );
}
