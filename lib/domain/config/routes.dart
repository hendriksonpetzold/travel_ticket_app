import 'package:get/get.dart';
import 'package:travel_app/pages/buy_ticket/buy_ticket_page.dart';
import 'package:travel_app/pages/cart/cart_page.dart';
import 'package:travel_app/pages/initial/initial_page.dart';
import '../../pages/on_boarding/on_boarding_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => const OnBoardingPage(),
    ),
    GetPage(
      name: '/initial_page',
      page: () => const InitialPage(),
      children: [
        GetPage(
          name: '/buy_ticket_page',
          page: () => BuyTicketPage(),
          children: [
            GetPage(
              name: '/cart_page',
              page: () => CartPage(),
            )
          ],
        )
      ],
    ),
  ];
}
