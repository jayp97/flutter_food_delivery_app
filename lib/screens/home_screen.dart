import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food_model.dart';
import 'package:flutter_food_delivery_app/widgets/food_carousel.dart';
import 'package:flutter_food_delivery_app/widgets/home_app_bar.dart';
import 'package:flutter_food_delivery_app/widgets/menuBar_carousel.dart';
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
  int _selectedIndex = 0;

  // List<FoodModel> foodCarousel() {
  //   if (Provider.of<Data>(context).selectedFood == Food.search) {
  //     return pizzaList;
  //   } else if (Provider.of<Data>(context).selectedFood == Food.pizza) {
  //     return pizzaList;
  //   } else if (Provider.of<Data>(context).selectedFood == Food.burger) {
  //     return burgerList;
  //   } else
  //     return friesList;
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<Data>(context, listen: false)
          .filteredFoodListMaker(EnumToString.convertToString(Food.pizza));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeAppBar(),
          HomeScreenTitle(),
          HomeSearchBar(),
          MenuBarCarousel(),
          SizedBox(height: 15.0),
          // foodCarousel(),
          // FoodCarousel(foodList: foodCarousel())
          FoodCarousel(foodList: Provider.of<Data>(context).filteredFoodItems),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
