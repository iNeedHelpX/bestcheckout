import 'dart:async';
import 'package:bestcheckout/constants/firebase_constants.dart';
import 'package:bestcheckout/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  static ProductsController instance = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  String collection = "products";

  @override
  onReady() {
    super.onReady();
    products.bindStream(getAllProducts());
  }

  Stream<List<ProductModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map(
            (query) => query.docs
                .map(
                  (item) => ProductModel.fromMap(
                    item.data(),
                  ),
                )
                .toList(),
          );
}
