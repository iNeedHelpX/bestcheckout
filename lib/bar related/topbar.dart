import 'package:bestcheckout/colors/bluepurple_gradient.dart';
import 'package:bestcheckout/colors/colours_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar myPinkAppBar() {
  return AppBar(
    title: Text(
      "Best checkout",
      style: GoogleFonts.akayaKanadaka(
        color: orangetext,
        fontSize: 36,
      ),
    ),
    centerTitle: true,
    toolbarHeight: 90,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: bluePurpleGrad(),
      ),
    ),
  );
}
