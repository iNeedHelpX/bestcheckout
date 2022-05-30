import 'package:bestcheckout/controllers/app_controller.dart';
import 'package:bestcheckout/controllers/productcontroller.dart';
import 'package:bestcheckout/controllers/user_controller.dart';
import 'package:logger/logger.dart';

ProductsController productsController = ProductsController.instance;
Logger logger = Logger();
AppController appController = AppController.instance;
UserController userController = UserController.instance;

//  PaymentsController paymentsController = PaymentsController.instance;