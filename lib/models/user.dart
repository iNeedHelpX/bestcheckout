import 'package:bestcheckout/models/cart.dart';
import 'package:firebase_core/firebase_core.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  String? id;
  String? name;
  String? email;
  List<CartItemModel>? cart;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.cart,
  });
  List<CartItemModel> _convertCartItems(List cartFomDb) {
    List<CartItemModel> _result = [];
    if (cartFomDb.length > 0) {
      cartFomDb.forEach((element) {
        _result.add(CartItemModel.fromMap(element));
      });
    }
    return _result;
  }

  List cartItemsToJson() => cart!.map((item) => item.toJson()).toList();
}
