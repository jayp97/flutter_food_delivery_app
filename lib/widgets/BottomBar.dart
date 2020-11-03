import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String title;
  final Function onTap;

  BottomBar({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: onTap,
        splashColor: Theme.of(context).accentColor,
        child: Container(
          padding: EdgeInsets.only(bottom: 5.0),
          alignment: Alignment.center,
          height: 80.0,
          // decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Text(
            title,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
