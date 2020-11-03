import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:provider/provider.dart';

class ShoppingCartButton extends StatelessWidget {
  final Icon icon;
  final Function onTap;
  final Color color;

  ShoppingCartButton({this.onTap, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    int orderListLength = Provider.of<Data>(context).orderList.length;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 12.0, 10.0),
            width: 40.0,
            height: 40.0,
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
            child: icon,
          ),
          Positioned(
            top: 1.0,
            right: 0.0,
            child: Container(
              alignment: Alignment.center,
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.5),
                color: orderListLength == 0 ? null : Colors.red,
              ),
              child: Text(
                orderListLength == 0 ? '' : '$orderListLength',
                style: orderListLength == 0
                    ? null
                    : TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
