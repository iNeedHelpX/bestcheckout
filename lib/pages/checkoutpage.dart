import 'package:bestcheckout/bar%20related/topbar.dart';
import 'package:bestcheckout/colors/colours_list.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgoldbg,
    );
  }
}
