import 'package:bestcheckout/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();
  RxList<ProductModel> products = new RxList<ProductModel>();
}
