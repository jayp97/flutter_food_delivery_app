import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/checkout_screen.dart';
import 'package:flutter_food_delivery_app/widgets/app_logo.dart';
import 'package:flutter_food_delivery_app/widgets/shopping_cart_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'float_button.dart';

class HomeAppBar extends StatelessWidget {
  final Function onTap;

  HomeAppBar({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 30.0, right: 30.0, top: 55.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: onTap,
            child: Icon(
              FontAwesomeIcons.bars,
              size: 30.0,
            ),
          ),
          AppLogo(
            fontSize: 40.0,
            padding: 36.0,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: EdgeInsets.only(right: 1.0),
            child: ShoppingCartButton(
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
