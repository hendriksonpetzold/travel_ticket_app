import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final String localName = Get.arguments['localName'];
  final IconData icon = Get.arguments['icon'];
  final String price = Get.arguments['price'];
}
