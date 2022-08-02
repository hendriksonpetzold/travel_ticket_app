import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/components/app_button.dart';
import 'package:travel_app/components/ticket_card.dart';
import 'package:travel_app/pages/cart/cart_controller.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            TicketCard(
              destiny: controller.localName,
              price: '\$${controller.price}',
              icon: controller.icon,
            ),
            Expanded(child: Container()),
            AppButton(
              onTap: () {},
              label: 'Buy \$${controller.price}',
              isSelected: Rx(true),
            ),
          ],
        ),
      ),
    );
  }
}
