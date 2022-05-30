import 'package:bestcheckout/auth/firebase_db.dart';
import 'package:bestcheckout/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final products = <ProductModel>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
