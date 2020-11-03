import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food_model.dart';
import 'package:flutter_food_delivery_app/screens/checkout_screen.dart';
import 'package:flutter_food_delivery_app/widgets/BottomBar.dart';
import 'package:flutter_food_delivery_app/widgets/float_button.dart';
import 'package:flutter_food_delivery_app/widgets/float_button_ingredients.dart';
import 'package:flutter_food_delivery_app/widgets/quantity_button.dart';
import 'package:flutter_food_delivery_app/widgets/shopping_cart_button.dart';
import 'package:flutter_food_delivery_app/widgets/size_button.dart';
import 'package:flutter_food_delivery_app/models/ingredients_model.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:provider/provider.dart';

class ItemScreen extends StatefulWidget {
  final FoodModel food;
  final int foodIndex;
  final double price;

  ItemScreen({this.food, this.foodIndex, this.price});

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int orderQuantity = 1;
  mealSize currentSize = mealSize.small;
  double mealPrice;

  //A function to scale the price of the item based on the size of meal
  double priceScalar() {
    if (currentSize == mealSize.small) {
      mealPrice = widget.price;
    } else if (currentSize == mealSize.regular) {
      mealPrice = widget.price * 1.2;
    } else if (currentSize == mealSize.medium) {
      mealPrice = widget.price * 1.4;
    } else if (currentSize == mealSize.large) {
      mealPrice = widget.price * 1.5;
    }
    return mealPrice;
  }

  Ingredients ingredientSelector(String foodIngredient) {
    Ingredients returnItem;
    for (Ingredients FoodItem in ingredientList) {
      if (foodIngredient == FoodItem.topping) {
        returnItem = FoodItem;
      }
    }
    return returnItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                decoration: BoxDecoration(
                  // boxShadow: [ BoxShadow()] ,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  color: Theme.of(context).accentColor,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: FloatButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.0),
                          child: ShoppingCartButton(
                            icon: Icon(Icons.shopping_bag_outlined),
                            color: Theme.of(context).primaryColor,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CheckOutScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      widget.food.name,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      widget.food.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '£${priceScalar().toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 8.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Hero(
                        tag: 'food${widget.foodIndex}',
                        child: SizedBox(
                          width: 270.0,
                          height: 270.0,
                          child: Image(
                            image: AssetImage(widget.food.imageUrl),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25.0, top: 30.0, bottom: 20.0),
                    child: Text(
                      'Sizes',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizeButton(
                        sizeOfMeal: mealSize.small,
                        selectedSizeOfMeal: currentSize,
                        onTap: () {
                          setState(() {
                            currentSize = mealSize.small;
                          });
                        },
                        size: 'S',
                      ),
                      SizeButton(
                        sizeOfMeal: mealSize.regular,
                        selectedSizeOfMeal: currentSize,
                        onTap: () {
                          setState(() {
                            currentSize = mealSize.regular;
                          });
                        },
                        size: 'R',
                      ),
                      SizeButton(
                        sizeOfMeal: mealSize.medium,
                        selectedSizeOfMeal: currentSize,
                        onTap: () {
                          setState(() {
                            currentSize = mealSize.medium;
                          });
                        },
                        size: 'M',
                      ),
                      SizeButton(
                        sizeOfMeal: mealSize.large,
                        selectedSizeOfMeal: currentSize,
                        onTap: () {
                          setState(() {
                            currentSize = mealSize.large;
                          });
                        },
                        size: 'L',
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25.0, top: 35.0, bottom: 20.0),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 60.0,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.food.toppings.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: FloatButtonIngredients(
                                    color: ingredientSelector(
                                            widget.food.toppings[index])
                                        .backgroundColor,
                                    image: Image(
                                      image: AssetImage(ingredientSelector(
                                              widget.food.toppings[index])
                                          .imageUrl),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: 523.0,
            left: 155.0,
            child: QuantityButton(
              onTapDown: () {
                setState(() {
                  orderQuantity == 1 ? orderQuantity = 1 : orderQuantity--;
                });
              },
              onTapUp: () {
                setState(() {
                  orderQuantity++;
                });
              },
              quantity: orderQuantity,
            ),
          )
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Provider.of<Data>(context, listen: false).updateOrderModel(
            mealSize: currentSize,
            food: widget.food,
            orderQuantity: orderQuantity,
            mealPrice: mealPrice,
          );
        },
        child: BottomBar(
          title: "Add to Cart",
        ),
      ),
    );
  }
}
