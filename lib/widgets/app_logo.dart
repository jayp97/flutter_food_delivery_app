import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/home_screen.dart';
import 'package:bordered_text/bordered_text.dart';

class AppLogo extends StatelessWidget {
  final double padding;
  final Color color;
  final double fontSize;

  AppLogo({this.padding, this.color, this.fontSize});

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
              fontSize: fontSize,
              fontFamily: 'Itim',
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
