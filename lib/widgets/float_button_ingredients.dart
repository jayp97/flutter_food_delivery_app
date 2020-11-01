import 'package:flutter/material.dart';

class FloatButtonIngredients extends StatelessWidget {
  final Image image;
  final Function onTap;
  final Color color;

  FloatButtonIngredients({this.onTap, this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        width: 40.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: color,
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
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: image,
        ),
      ),
    );
  }
}
