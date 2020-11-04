import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/app_logo.dart';

class DummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: AppLogo(padding: 10.0),
        ),
      ),
    );
  }
}
