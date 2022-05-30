import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/colors/pinkpurple_gradient.dart';
import 'package:bestcheckout/controller/cart_controller.dart';
import 'package:bestcheckout/controller/product_controller.dart';
import 'package:bestcheckout/models/product.dart';
import 'package:bestcheckout/pages/checkoutpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogProducts extends StatelessWidget {
  final productController = Get.put(ProductController());

  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            itemCount: productController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(index: index);
            }),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  ProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 0),
        margin: EdgeInsets.only(left: 10, right: 0),
        height: 300,
        decoration: BoxDecoration(
            gradient: pinkPurpleGrad(),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  NetworkImage(productController.products[index].image),
            ),
            SizedBox(
              width: 22,
            ),
            Text(
              productController.products[index].name,
              style: GoogleFonts.schoolbell(fontSize: 28),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {
                  //ok
                  cartController.addProduct(productController.products[index]);
                },
                icon: Icon(Icons.add_box))
          ]),
        ),
      ),
    );
  }
}
