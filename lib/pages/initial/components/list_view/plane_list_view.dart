import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/models/card_model.dart';
import 'package:travel_app/pages/initial/components/place_card.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class PlaneListView extends StatelessWidget {
  PlaneListView({Key? key}) : super(key: key);
  final InitialController controller = Get.find<InitialController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: controller.listVisible.value,
          child: ListView.builder(
            itemCount: controller.planeList.length,
            itemBuilder: (context, index) {
              final CardModel cardModel = controller.planeList[index];
              return InkWell(
                onTap: () {
                  Get.toNamed(
                    '/initial_page/buy_ticket_page',
                    parameters: {
                      'localName': cardModel.localName,
                      'localImage': cardModel.localImage,
                      'price': cardModel.price,
                      'icon': Icons.flight.codePoint.toString(),
                      'tag': 'plane$index',
                    },
                  );
                },
                child: Hero(
                  tag: 'plane$index',
                  child: PlaceCard(
                    localName: cardModel.localName,
                    localImage: cardModel.localImage,
                    price: cardModel.price,
                  ),
                ),
              );
            },
          ),
        ),
        Visibility(
          visible: controller.isSearch.value,
          child: InkWell(
            onTap: () {
              Get.toNamed(
                '/initial_page/buy_ticket_page',
                parameters: {
                  'localName': controller.localName,
                  'localImage': controller.localImage,
                  'price': controller.price,
                  'icon': Icons.flight.codePoint.toString(),
                  'tag': controller.localName,
                },
              );
            },
            child: Hero(
              tag: controller.localName,
              child: PlaceCard(
                localName: controller.localName,
                localImage: controller.localImage,
                price: controller.price,
              ),
            ),
          ),
        )
      ],
    );
  }
}
