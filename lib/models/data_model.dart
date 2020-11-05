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

  List<FoodModel> filteredFoodItems = [];

  addToFilteredFoodItems(FoodModel foodItem) {
    filteredFoodItems.add(foodItem);
    notifyListeners();
  }

  void clearFilteredFoodItems() {
    filteredFoodItems.clear();
    notifyListeners();
  }

  void filteredFoodListMaker(String text) {
    for (FoodModel item in foodList) {
      if (item.name.toLowerCase().contains(text.toLowerCase()) ||
          text.toLowerCase().contains(item.name.toLowerCase()) ||
          item.key.contains(text)) {
        addToFilteredFoodItems(item);
        notifyListeners();
      }
    }
  }

  void changeFood(Food newFood) {
    selectedFood = newFood;
    notifyListeners();
  }

  void updateOrderModel(
      {mealSize mealSize,
      int orderQuantity,
      FoodModel food,
      double mealPrice}) {
    orderList.add(
      OrderModel(
        sizeOfMeal: mealSize,
        orderQuantity: orderQuantity,
        food: food,
        mealPrice: mealPrice,
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

  void removeOrderItem(int index) {
    orderList.removeAt(index);
    notifyListeners();
  }
}
