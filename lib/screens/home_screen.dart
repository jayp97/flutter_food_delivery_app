import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/app_logo.dart';
import 'package:flutter_food_delivery_app/widgets/food_carousel.dart';
import 'package:flutter_food_delivery_app/widgets/home_app_bar.dart';
import 'package:flutter_food_delivery_app/widgets/menuBar_carousel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/widgets/homescreen_title.dart';
import 'package:flutter_food_delivery_app/widgets/home_search_bar.dart';
import 'package:flutter_food_delivery_app/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: SideMenu(),
      body: Column(
        children: <Widget>[
          HomeAppBar(
            onTap: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
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
