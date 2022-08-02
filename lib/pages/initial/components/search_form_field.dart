import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/pages/initial/initial_controller.dart';

class SearchFormField extends StatelessWidget {
  final void Function()? onChanged;
  SearchFormField({Key? key, this.onChanged}) : super(key: key);
  final InitialController controller = Get.find<InitialController>();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.searchEditingController,
      onChanged: (value) {
        controller.searchCityByTransportType();
      },
      decoration: InputDecoration(
        hintText: 'Pesquisar',
        isDense: true,
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
