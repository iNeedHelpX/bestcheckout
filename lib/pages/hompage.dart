import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/pages/widget/catalog_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Column(
          children: [
            //stuff here
            CatalogProducts(),
          ],
        ),
      ),
    );
  }
}
