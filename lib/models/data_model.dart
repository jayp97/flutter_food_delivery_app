import 'package:flutter/cupertino.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'food_model.dart';
import 'order_model.dart';

class Data extends ChangeNotifier {
  Food selectedFood = Food.pizza;

  List<OrderModel> orderList = [
    // OrderModel(
    //   sizeOfMeal: mealSize.small,
    //   orderQuantity: 1,
    //   food: pizzaList[0],
    // ),
    // OrderModel(
    //   sizeOfMeal: mealSize.large,
    //   orderQuantity: 2,
    //   food: pizzaList[1],
    // ),
  ];

  void changeFood(Food newFood) {
    selectedFood = newFood;
    notifyListeners();
  }

  void updateOrderModel(
      {mealSize mealSize, int orderQuantity, FoodModel food}) {
    orderList.add(
      OrderModel(
        sizeOfMeal: mealSize,
        orderQuantity: orderQuantity,
        food: food,
      ),
    );
    notifyListeners();
  }

  void updateOrderQuantityAdd(int index) {
    orderList[index].orderQuantity++;
    // orderQuantity++;
    notifyListeners();
  }

  void updateOrderQuantityRemove(int index) {
    orderList[index].orderQuantity--;
    notifyListeners();
  }
}

//List of FoodList[index] e.g PizzaList[1], order Quantity, and meal size.
//Alternatively I create each individual tile and create a list of tiles.
