import 'package:flutter/cupertino.dart';
import 'package:flutter_food_delivery_app/constants.dart';

class Data extends ChangeNotifier {
  Food selectedFood = Food.fries;

  void changeFood(Food newFood) {
    selectedFood = newFood;
    notifyListeners();
  }
}
