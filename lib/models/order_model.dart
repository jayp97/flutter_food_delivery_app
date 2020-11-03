import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/models/food_model.dart';

class OrderModel {
  mealSize sizeOfMeal;
  FoodModel food;
  int orderQuantity;
  double mealPrice;

  OrderModel(
      {@required this.sizeOfMeal,
      @required this.orderQuantity,
      @required this.food,
      @required this.mealPrice});
}
