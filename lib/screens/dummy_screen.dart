import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter_food_delivery_app/models/food_model.dart';

class DummyScreen extends StatefulWidget {
  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  final SearchBarController<FoodModel> _searchBarController =
      SearchBarController();

  Future<List<FoodModel>> _getAllFoodItems(String text) async {
    // await Future.delayed(Duration(seconds: 2));
    // if (text.length < 3) throw Error();
    // List<FoodModel> filteredFoodItems = [];
    // // List<FoodModel> tempList = [];
    //
    // for (FoodModel item in foodList) {
    //   if (item.name.toLowerCase().contains(text.toLowerCase())) {
    //     filteredFoodItems.add(item);
    //   }
    // }
    // return filteredFoodItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<FoodModel>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          // headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 1),
          hintText: 'Search Foods...',
          onSearch: _getAllFoodItems,
          searchBarController: _searchBarController,
          placeHolder: Text("placeholder"),
          cancellationWidget: Text("Cancel"),
          emptyWidget: Text("empty"),
          // indexedScaledTileBuilder: (int index) =>
          //     ScaledTile.count(1, index.isEven ? 2 : 1),
          onCancelled: () {
            print("Cancelled triggered");
          },
          minimumChars: 2,
          scrollDirection: Axis.vertical,
          onItemFound: (FoodModel food, int index) {
            return Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 20.0),
                  height: 170.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(110.0, 20.0, 20.0, 20.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star,
                                color: Theme.of(context).primaryColor,
                                size: 25.0),
                            SizedBox(width: 3.0),
                            Text(
                              food.rating,
                              style: TextStyle(
                                  fontSize: 19.0, color: Colors.black26),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: <Widget>[
                            Text(
                              food.name,
                              style: TextStyle(
                                  fontSize: 21.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: <Widget>[
                            Text(food.description,
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(height: 17.0),
                        Row(
                          children: <Widget>[
                            Text(
                              '£${food.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 30.0,
                  top: 12.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Hero(
                      tag: 'food$index',
                      child: Image(
                        width: 140,
                        image: AssetImage(food.imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
