import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/models/card_model.dart';
import 'package:travel_app/pages/initial/components/place_card.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class ShipListView extends StatelessWidget {
  ShipListView({Key? key}) : super(key: key);
  final InitialController controller = Get.put(InitialController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1000,
      child: ListView.builder(
        itemCount: controller.shipList.length,
        itemBuilder: (context, index) {
          final CardModel cardModel = controller.shipList[index];
          return PlaceCard(
            localName: cardModel.localName,
            localImage: cardModel.localImage,
            price: cardModel.price,
          );
        },
      ),
    );
  }
}
