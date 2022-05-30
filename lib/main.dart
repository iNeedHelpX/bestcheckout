import 'package:bestcheckout/constants/firebase_constants.dart';
import 'package:bestcheckout/controllers/app_controller.dart';
import 'package:bestcheckout/controllers/cart_controller.dart';
import 'package:bestcheckout/controllers/productcontroller.dart';
import 'package:bestcheckout/controllers/user_controller.dart';
import 'package:bestcheckout/start/start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AppController());
    Get.put(UserController());
    Get.put(ProductsController());
    Get.put(CartController());
  });

//change this here
  runApp(Start());
}
