import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';

class MenuTile extends StatelessWidget {
  final Food foodItem;
  final Food selectedFoodItem;
  final Function onTap;
  final String tileTitle;

  MenuTile({this.foodItem, this.tileTitle, this.onTap, this.selectedFoodItem});

  Food selectedFood() {
    return foodItem;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          width: 130.0,
          // height: 50.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectedFoodItem == foodItem
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Text(
            tileTitle,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
