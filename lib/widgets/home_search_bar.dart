import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/yum_yum_search_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 300.0,
            height: 80.0,
            child: YumYumSearchBar(),
          ),
          SizedBox(width: 15.0),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(FontAwesomeIcons.slidersH),
          ),
        ],
      ),
    );
  }
}

// Container(
// width: 280,
// height: 50,
// decoration: BoxDecoration(
// color: Theme.of(context).accentColor,
// borderRadius: BorderRadius.circular(15.0),
// ),
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 15.0),
// child: Row(
// children: <Widget>[
// Icon(Icons.search),
// SizedBox(width: 10.0),
// Text(
// 'Search Foods...',
// style: TextStyle(
// fontSize: 15.0,
// fontWeight: FontWeight.w600,
// letterSpacing: 0.7,
// color: Colors.black26),
// ),
// ],
// ),
// ),
// ),
