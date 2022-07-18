import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/components/custom_back_button.dart';
import 'package:travel_app/pages/buy_ticket/buy_ticket_controller.dart';
import 'package:travel_app/pages/buy_ticket/components/ticket_card.dart';

class BuyTicketPage extends StatelessWidget {
  BuyTicketPage({Key? key}) : super(key: key);
  final BuyTicketController controller = Get.put(BuyTicketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(controller.localImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: const Alignment(-0.9, -0.4),
              child: CustomBackButton(
                onTap: () {
                  Get.back();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * .75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  TicketCard(
                    destiny: controller.localName,
                    price: '\$${controller.price}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
