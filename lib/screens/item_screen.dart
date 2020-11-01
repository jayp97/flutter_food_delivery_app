import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/models/pizza_model.dart';
import 'package:flutter_food_delivery_app/screens/checkout_screen.dart';
import 'package:flutter_food_delivery_app/widgets/float_button.dart';
import 'package:flutter_food_delivery_app/widgets/float_button_ingredients.dart';
import 'package:flutter_food_delivery_app/widgets/size_button.dart';
import 'package:flutter_food_delivery_app/models/ingredients_model.dart';

class ItemScreen extends StatelessWidget {
  final Pizza pizza;
  final int pizzaIndex;

  ItemScreen({this.pizza, this.pizzaIndex});

  @override
  Widget build(BuildContext context) {
    Ingredients ingredientSelector(String foodIngredient) {
      Ingredients returnItem;
      for (Ingredients FoodItem in ingredientList) {
        if (foodIngredient == FoodItem.topping) {
          returnItem = FoodItem;
        }
      }
      return returnItem;
    }

    return Scaffold(
      body: Column(
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
                SizedBox(height: 50.0),
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
                      child: FloatButton(
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
                  pizza.name,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Text(
                  pizza.description,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 20.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Hero(
                    tag: 'food$pizzaIndex',
                    child: Image(
                      width: 280,
                      image: AssetImage(pizza.imageUrl),
                      fit: BoxFit.contain,
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
                padding: EdgeInsets.only(left: 25.0, top: 30.0, bottom: 20.0),
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
                    size: 'S',
                    color: Colors.white,
                  ),
                  SizeButton(
                    size: 'R',
                    color: Colors.white,
                  ),
                  SizeButton(
                    size: 'M',
                    color: Colors.white,
                  ),
                  SizeButton(
                    size: 'L',
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 50.0, bottom: 20.0),
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
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // FloatButtonIngredients(
                    //   color: ingredientList[0].backgroundColor,
                    //   image: Image(
                    //     image: AssetImage(ingredientList[0].imageUrl),
                    //   ),
                    // ),
                    Expanded(
                      child: SizedBox(
                        height: 60.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pizza.toppings.length,
                          // shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: FloatButtonIngredients(
                                color: ingredientSelector(pizza.toppings[index])
                                    .backgroundColor,
                                image: Image(
                                  image: AssetImage(
                                      ingredientSelector(pizza.toppings[index])
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 5.0),
        alignment: Alignment.center,
        height: 80.0,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Text(
          'Add to Cart',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
