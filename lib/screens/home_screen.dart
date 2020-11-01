import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/home_app_bar.dart';
import 'package:flutter_food_delivery_app/widgets/menuBar_carousel.dart';
import 'package:flutter_food_delivery_app/widgets/pizza_carousel.dart';
import 'package:flutter_food_delivery_app/widgets/burger_carousel.dart';
import 'package:flutter_food_delivery_app/widgets/fries_carousel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/widgets/homescreen_title.dart';
import 'package:flutter_food_delivery_app/widgets/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget foodCarousel() {
      if (Provider.of<Data>(context).selectedFood == Food.all) {
        print(Provider.of<Data>(context).selectedFood);
        return PizzaCarousel();
      } else if (Provider.of<Data>(context).selectedFood == Food.pizza) {
        return PizzaCarousel();
      } else if (Provider.of<Data>(context).selectedFood == Food.burger) {
        return BurgerCarousel();
      } else
        return FriesCarousel();
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeAppBar(),
          HomeScreenTitle(),
          HomeSearchBar(),
          MenuBarCarousel(),
          SizedBox(height: 15.0),
          foodCarousel(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Details',
          ),
        ],
      ),
    );
  }
}
