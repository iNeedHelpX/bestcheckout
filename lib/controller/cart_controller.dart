import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addProduct(ProductModel product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar('Added item to cart', 'Added this item to cart',
        backgroundColor: lightpink);
  }
}
