import 'package:get/get.dart';

class BuyTicketController extends GetxController {
  final String localName = Get.parameters['localName'].toString();
  final String localImage = Get.parameters['localImage'].toString();
  final String price = Get.parameters['price'].toString();
  final String icon = Get.parameters['icon'].toString();
  final String tag = Get.parameters['tag'].toString();
}
