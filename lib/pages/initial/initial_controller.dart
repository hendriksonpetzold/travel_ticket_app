import 'package:get/get.dart';
import 'package:travel_app/domain/enums/travel_list_enum.dart';
import 'package:travel_app/domain/models/card_model.dart';

class InitialController extends GetxController {
  List<CardModel> planeList = [
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '1500'),
    CardModel(
        localImage: 'assets/paris.jpg', localName: 'Paris', price: '1500'),
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '1500'),
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '1500'),
  ];

  List<CardModel> busList = [
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '200'),
  ];
  List<CardModel> trainList = [
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '300'),
  ];
  List<CardModel> shipList = [
    CardModel(
        localImage: 'assets/paris2.jpg', localName: 'Paris', price: '500'),
  ];

  final Rx<TravelListEnum> _activeList =
      Rx<TravelListEnum>(TravelListEnum.plane);

  TravelListEnum get activeList => _activeList.value;

  void changeList({required TravelListEnum list}) {
    _activeList.value = list;
  }

  Rx<bool> checkActiveList({required TravelListEnum list}) {
    if (list == _activeList.value) return Rx<bool>(true);
    return Rx<bool>(false);
  }

  int getListIndex() {
    switch (_activeList.value) {
      case TravelListEnum.plane:
        return 0;

      case TravelListEnum.bus:
        return 1;

      case TravelListEnum.train:
        return 2;

      case TravelListEnum.ship:
        return 3;

      default:
        return 0;
    }
  }
}
