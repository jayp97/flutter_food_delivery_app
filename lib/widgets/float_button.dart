import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  final Icon icon;
  final Function onTap;
  final Color color;

  FloatButton({this.onTap, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
    );
  }
}
