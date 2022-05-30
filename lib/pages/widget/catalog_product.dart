import 'package:bestcheckout/colors/colours_list.dart';
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
  final ProductController productController = Get.find();
  final int index;
  ProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
      child: Container(
        color: lightgoldbg,
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
                  Get.to(CheckoutPage());
                },
                icon: Icon(Icons.add_box))
          ]),
        ),
      ),
    );
  }
}
