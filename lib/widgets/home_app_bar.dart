import 'package:flutter/material.dart';
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
          FloatButton(
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
    );
  }
}
