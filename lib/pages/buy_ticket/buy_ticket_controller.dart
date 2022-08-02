import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/enums/travel_list_enum.dart';

class BuyTicketController extends GetxController {
  final String localName = Get.arguments['localName'].toString();
  final String localImage = Get.arguments['localImage'].toString();
  final String price = Get.arguments['price'].toString();
  final String tag = Get.arguments['tag'].toString();
  final TravelListEnum travelListEnum = Get.arguments['enum'];
  IconData? icon;

  @override
  void onInit() {
    getPageInfoByEnum();

    super.onInit();
  }

  void getPageInfoByEnum() {
    switch (travelListEnum) {
      case TravelListEnum.plane:
        icon = Icons.flight;
        break;
      case TravelListEnum.bus:
        icon = Icons.directions_bus;
        break;
      case TravelListEnum.train:
        icon = Icons.train;
        break;
      case TravelListEnum.ship:
        icon = Icons.directions_boat;
        break;
      default:
    }
  }
}
