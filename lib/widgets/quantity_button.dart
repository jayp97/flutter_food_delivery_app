import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final Function onTapDown;
  final Function onTapUp;
  final int quantity;

  QuantityButton({this.onTapDown, this.onTapUp, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 40.0,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            )
          ],
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: onTapDown,
            child: Icon(
              Icons.remove,
              color: Colors.black45,
            ),
          ),
          Text(
            "$quantity",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: onTapUp,
            child: Icon(
              Icons.add,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
