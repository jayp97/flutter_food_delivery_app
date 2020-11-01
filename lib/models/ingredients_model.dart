import 'package:flutter/material.dart';

class Ingredients {
  String topping;
  String imageUrl;
  Color backgroundColor;

  Ingredients({this.imageUrl, this.backgroundColor, this.topping});
}

List<Ingredients> ingredientList = [
  Ingredients(
    topping: 'corn',
    imageUrl: 'assets/images/ingredients/corn.png',
    backgroundColor: Color(0xFFfef8e6),
  ),
  Ingredients(
    topping: 'beef',
    imageUrl: 'assets/images/ingredients/beef.png',
    backgroundColor: Color(0xFFf7ebec),
  ),
  Ingredients(
    topping: 'bread',
    imageUrl: 'assets/images/ingredients/bread.png',
    backgroundColor: Color(0xFFf7f6eb),
  ),
  Ingredients(
    topping: 'cheese',
    imageUrl: 'assets/images/ingredients/cheese.png',
    backgroundColor: Color(0xFFf7f7eb),
  ),
  Ingredients(
    topping: 'chicken',
    imageUrl: 'assets/images/ingredients/chicken.png',
    backgroundColor: Color(0xFFf7f4eb),
  ),
  Ingredients(
    topping: 'fish',
    imageUrl: 'assets/images/ingredients/fish.png',
    backgroundColor: Color(0xFFf0f9f9),
  ),
  Ingredients(
    topping: 'onion',
    imageUrl: 'assets/images/ingredients/onion.png',
    backgroundColor: Color(0xFFf9f0f4),
  ),
  Ingredients(
    topping: 'pepper',
    imageUrl: 'assets/images/ingredients/pepper.png',
    backgroundColor: Color(0xFFfcefef),
  ),
  Ingredients(
    topping: 'tomato',
    imageUrl: 'assets/images/ingredients/tomato.png',
    backgroundColor: Color(0xFFfcefef),
  ),
  Ingredients(
    topping: 'potato',
    imageUrl: 'assets/images/ingredients/potato.png',
    backgroundColor: Color(0xFFf4f9f0),
  ),
];
