import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/checkout_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'float_button.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 30.0, right: 30.0, top: 55.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.bars,
            size: 30.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: FloatButton(
              icon: Icon(Icons.shopping_bag_outlined),
              color: Theme.of(context).primaryColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOutScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
