import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:flutter_food_delivery_app/widgets/menu_tile.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:provider/provider.dart';

class MenuBarCarousel extends StatefulWidget {
  @override
  _MenuBarCarouselState createState() => _MenuBarCarouselState();
}

class _MenuBarCarouselState extends State<MenuBarCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      // decoration: BoxDecoration(color: Colors.blue),
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 5.0),
          MenuTile(
            tileTitle: 'All',
            foodItem: Food.all,
            onTap: () {
              Provider.of<Data>(context, listen: false).changeFood(Food.all);
              print(Provider.of<Data>(context, listen: false).selectedFood);
            },
            selectedFoodItem: Provider.of<Data>(context).selectedFood,
          ),
          MenuTile(
            tileTitle: '🍕 Pizza',
            foodItem: Food.pizza,
            onTap: () {
              Provider.of<Data>(context, listen: false).changeFood(Food.pizza);
            },
            selectedFoodItem: Provider.of<Data>(context).selectedFood,
          ),
          MenuTile(
            tileTitle: '🍔 Burger',
            foodItem: Food.burger,
            onTap: () {
              Provider.of<Data>(context, listen: false).changeFood(Food.burger);
            },
            selectedFoodItem: Provider.of<Data>(context).selectedFood,
          ),
          MenuTile(
            tileTitle: '🍟 Fries',
            foodItem: Food.fries,
            onTap: () {
              Provider.of<Data>(context, listen: false).changeFood(Food.fries);
            },
            selectedFoodItem: Provider.of<Data>(context).selectedFood,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}
