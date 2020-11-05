import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/models/food_model.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:provider/provider.dart';

class YumYumSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<List<FoodModel>> _getAllFoodItems(String text) async {
      await Future.delayed(Duration(milliseconds: 10));
      Provider.of<Data>(context, listen: false).changeFood(Food.search);
      // if (text.length < 3) throw Error();
      Provider.of<Data>(context, listen: false).clearFilteredFoodItems();

      for (FoodModel item in foodList) {
        //This should be comparing itself to item keys??
        if (item.name.toLowerCase().contains(text.toLowerCase()) ||
            text.toLowerCase().contains(item.name.toLowerCase()) ||
            item.key.contains(text)) {
          Provider.of<Data>(context, listen: false)
              .addToFilteredFoodItems(item);
        }
      }
      return Provider.of<Data>(context, listen: false).filteredFoodItems;
    }

    return SearchBar<FoodModel>(
      // searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
      // headerPadding: EdgeInsets.symmetric(horizontal: 10),
      // listPadding: EdgeInsets.symmetric(horizontal: 1),
      hintText: 'Search Foods...',
      onSearch: _getAllFoodItems,
      searchBarStyle: SearchBarStyle(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // searchBarController: _searchBarController,
      // placeHolder: Text("placeholder"),
      // cancellationWidget: Text("Cancel"),
      // emptyWidget: Text("empty"),
      // indexedScaledTileBuilder: (int index) =>
      //     ScaledTile.count(1, index.isEven ? 2 : 1),
      onCancelled: () {
        print("Cancelled triggered");
      },
      minimumChars: 2,
      // scrollDirection: Axis.vertical,
      onItemFound: (FoodModel food, int index) {
        return;
      },
    );
  }
}
