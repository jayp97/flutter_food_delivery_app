import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';

class SizeButton extends StatelessWidget {
  final String size;
  final Function onTap;
  final mealSize sizeOfMeal;
  final mealSize selectedSizeOfMeal;

  SizeButton({this.onTap, this.size, this.sizeOfMeal, this.selectedSizeOfMeal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: selectedSizeOfMeal == sizeOfMeal
              ? Theme.of(context).primaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
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
          '$size',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
