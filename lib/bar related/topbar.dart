import 'package:bestcheckout/colors/bluepurple_gradient.dart';
import 'package:bestcheckout/colors/colours_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar myPurpleBar() {
  return AppBar(
    title: Text(
      "Best checkout",
      style: GoogleFonts.schoolbell(
        color: orangetext,
        fontWeight: FontWeight.w400,
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
