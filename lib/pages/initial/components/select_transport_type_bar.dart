import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/components/app_button.dart';
import 'package:travel_app/domain/enums/travel_list_enum.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class SelectTransportTypeBar extends StatelessWidget {
  SelectTransportTypeBar({Key? key}) : super(key: key);

  final InitialController controller = Get.find<InitialController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 40,
        width: 430,
        child: Obx(
          () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                  onTap: () {
                    controller.changeList(list: TravelListEnum.plane);
                  },
                  label: 'Avião',
                  isSelected:
                      controller.checkActiveList(list: TravelListEnum.plane),
                  height: 40,
                  width: 95,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: TravelListEnum.bus);
                  },
                  label: 'Ônibus',
                  isSelected:
                      controller.checkActiveList(list: TravelListEnum.bus),
                  height: 40,
                  width: 95,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: TravelListEnum.train);
                  },
                  label: 'Trem',
                  isSelected:
                      controller.checkActiveList(list: TravelListEnum.train),
                  height: 40,
                  width: 95,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: TravelListEnum.ship);
                  },
                  label: 'Navio',
                  isSelected:
                      controller.checkActiveList(list: TravelListEnum.ship),
                  height: 40,
                  width: 95,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
