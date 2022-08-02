import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/models/card_model.dart';
import 'package:travel_app/pages/initial/components/place_card.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class TrainListView extends StatelessWidget {
  TrainListView({Key? key}) : super(key: key);

  final InitialController controller = Get.find<InitialController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        itemCount: controller.trainListSearch.length,
        itemBuilder: (context, index) {
          final CardModel cardModel = controller.trainListSearch[index];
          return InkWell(
            onTap: () {
              Get.toNamed(
                '/initial_page/buy_ticket_page',
                parameters: {
                  'localName': cardModel.localName,
                  'localImage': cardModel.localImage,
                  'price': cardModel.price,
                  'icon': Icons.directions_subway.codePoint.toString(),
                  'tag': 'train',
                },
              );
            },
            child: Hero(
              tag: 'train',
              child: PlaceCard(
                localName: cardModel.localName,
                localImage: cardModel.localImage,
                price: cardModel.price,
              ),
            ),
          );
        },
      );
    });
  }
}