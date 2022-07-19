import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/pages/initial/components/bus_list_view.dart';
import 'package:travel_app/pages/initial/components/custom_title.dart';

import 'package:travel_app/pages/initial/components/plane_list_view.dart';
import 'package:travel_app/pages/initial/components/search_form_field.dart';
import 'package:travel_app/pages/initial/components/select_transport_type_bar.dart';
import 'package:travel_app/pages/initial/components/ship_list_view.dart';
import 'package:travel_app/pages/initial/components/train_list_view.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class InitialPage extends StatelessWidget {
  InitialPage({Key? key}) : super(key: key);
  final InitialController controller = Get.put(InitialController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitle(),
              const SearchFormField(),
              const SizedBox(
                height: 16,
              ),
              SelectTransportTypeBar(),
              const SizedBox(
                height: 8,
              ),
              Obx(
                () {
                  return Expanded(
                    child: IndexedStack(
                      index: controller.getListIndex(),
                      children: [
                        PlaneListView(),
                        BusListView(),
                        TrainListView(),
                        ShipListView(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
