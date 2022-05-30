import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String name;
  final int price;
  final String image;

  const ProductModel({
    required this.name,
    required this.price,
    required this.image,
  });

  static ProductModel fromSnapshot(DocumentSnapshot snapshot) {
    ProductModel product = ProductModel(
        image: snapshot['image'],
        name: snapshot['name'],
        price: snapshot['price']);
    return product;
  }
}
