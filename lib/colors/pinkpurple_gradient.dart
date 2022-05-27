import 'package:flutter/material.dart';

LinearGradient pinkPurpleGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 255, 0, 170),
    Color.fromARGB(255, 253, 14, 225),
    Color.fromARGB(255, 93, 20, 253),
  ], begin: Alignment.bottomCenter, end: Alignment.topCenter);
}
