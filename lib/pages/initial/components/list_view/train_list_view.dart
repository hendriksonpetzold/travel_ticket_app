import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/enums/travel_list_enum.dart';
import 'package:travel_app/domain/models/card_model.dart';
import 'package:travel_app/pages/initial/components/place_card.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class TrainListView extends GetView<InitialController> {
  const TrainListView({Key? key}) : super(key: key);

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
                arguments: {
                  'localName': cardModel.localName,
                  'localImage': cardModel.localImage,
                  'price': cardModel.price,
                  'tag': 'train$index',
                  'enum': TravelListEnum.train,
                },
              );
            },
            child: Hero(
              tag: 'train$index',
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
