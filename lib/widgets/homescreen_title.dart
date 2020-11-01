import 'package:flutter/material.dart';

class HomeScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Container(
            width: 230.0,
            child: Text(
              "Let's eat Delicious food",
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        CircleAvatar(
          radius: 18.0,
          backgroundImage: NetworkImage(
              'https://www.dictionary.com/e/wp-content/uploads/2018/08/face-with-tongue.png'),
        ),
      ],
    );
  }
}
