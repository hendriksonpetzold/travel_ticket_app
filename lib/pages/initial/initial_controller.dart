import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:travel_app/domain/enums/travel_list_enum.dart';
import 'package:travel_app/domain/models/card_model.dart';

class InitialController extends GetxController {
  TextEditingController searchEditingController = TextEditingController();
  RxList<CardModel> planeListSearch = RxList([]);
  RxList<CardModel> busListSearch = RxList([]);
  RxList<CardModel> trainListSearch = RxList([]);
  RxList<CardModel> shipListSearch = RxList([]);

  void searchCity(List<CardModel> list, RxList<CardModel> searchList) {
    List<CardModel> newList = list
        .where((item) => item.localName.contains(searchEditingController.text))
        .toList();
    searchList.value = newList;
  }

  @override
  void onInit() {
    planeListSearch.value = planeList;
    busListSearch.value = busList;
    trainListSearch.value = trainList;
    shipListSearch.value = shipList;

    super.onInit();
  }

  void searchCityByTransportType() {
    switch (_activeList.value) {
      case TravelListEnum.plane:
        searchCity(planeList, planeListSearch);
        break;
      case TravelListEnum.bus:
        searchCity(busList, busListSearch);
        break;
      case TravelListEnum.ship:
        searchCity(shipList, shipListSearch);
        break;
      case TravelListEnum.train:
        searchCity(trainList, trainListSearch);
        break;
      default:
    }
  }

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

  List<CardModel> planeList = [
    CardModel(
      localImage: 'assets/paris.jpg',
      localName: 'Paris',
      price: '1200',
    ),
    CardModel(
      localImage: 'assets/roma.jpg',
      localName: 'Roma',
      price: '1300',
    ),
    CardModel(
      localImage: 'assets/newyork.jpg',
      localName: 'Nova York',
      price: '1700',
    ),
    CardModel(
      localImage: 'assets/rio.jpg',
      localName: 'Rio de Janeiro',
      price: '1000',
    ),
    CardModel(
      localImage: 'assets/vegas.jpg',
      localName: 'Las Vegas',
      price: '1800',
    ),
    CardModel(
      localImage: 'assets/seatle.jpg',
      localName: 'Seattle',
      price: '1600',
    ),
    CardModel(
      localImage: 'assets/london.jpg',
      localName: 'Londres',
      price: '1800',
    ),
  ];

  List<CardModel> busList = [
    CardModel(
      localImage: 'assets/newyork.jpg',
      localName: 'Nova York',
      price: '400',
    ),
    CardModel(
      localImage: 'assets/london.jpg',
      localName: 'Londres',
      price: '800',
    ),
    CardModel(
      localImage: 'assets/roma.jpg',
      localName: 'Roma',
      price: '1000',
    ),
  ];

  List<CardModel> trainList = [
    CardModel(
      localImage: 'assets/paris.jpg',
      localName: 'Paris',
      price: '600',
    ),
    CardModel(
      localImage: 'assets/vegas.jpg',
      localName: 'Las Vegas',
      price: '1000',
    ),
    CardModel(
      localImage: 'assets/seatle.jpg',
      localName: 'Seattle',
      price: '800',
    ),
  ];

  List<CardModel> shipList = [
    CardModel(
      localImage: 'assets/rio.jpg',
      localName: 'Rio de Janeiro',
      price: '800',
    ),
    CardModel(
      localImage: 'assets/newyork.jpg',
      localName: 'Nova York',
      price: '1300',
    ),
    CardModel(
      localImage: 'assets/paris.jpg',
      localName: 'Paris',
      price: '1500',
    ),
  ];
}
