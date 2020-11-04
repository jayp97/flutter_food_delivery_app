import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/home_screen.dart';
import 'package:bordered_text/bordered_text.dart';

class AppLogo extends StatelessWidget {
  final double padding;

  AppLogo({this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: padding),
        child: BorderedText(
          strokeWidth: 4.0,
          strokeColor: Colors.black,
          child: Text(
            'YUM YUM',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Itim',
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
