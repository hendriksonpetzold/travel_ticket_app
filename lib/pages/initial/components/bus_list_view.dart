import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/models/card_model.dart';
import 'package:travel_app/pages/initial/components/place_card.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class BusListView extends StatelessWidget {
  BusListView({Key? key}) : super(key: key);
  final InitialController controller = Get.put(InitialController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1000,
      child: ListView.builder(
        itemCount: controller.busList.length,
        itemBuilder: (context, index) {
          final CardModel cardModel = controller.busList[index];
          return InkWell(
            onTap: () {
              Get.toNamed(
                '/initial_page/buy_ticket_page',
                parameters: {
                  'localName': cardModel.localName,
                  'localImage': cardModel.localImage,
                  'price': cardModel.price,
                },
              );
            },
            child: PlaceCard(
              localName: cardModel.localName,
              localImage: cardModel.localImage,
              price: cardModel.price,
            ),
          );
        },
      ),
    );
  }
}
