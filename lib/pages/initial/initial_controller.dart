import 'package:get/get.dart';
import 'package:travel_app/domain/enums/travel_list_enum.dart';
import 'package:travel_app/domain/models/card_model.dart';

class InitialController extends GetxController {
  List<CardModel> cardList = [];

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
