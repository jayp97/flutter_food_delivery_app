import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String title;

  BottomBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.0),
      alignment: Alignment.center,
      height: 80.0,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Text(
        title,
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
      ),
    );
  }
}
