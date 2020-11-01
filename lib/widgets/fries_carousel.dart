import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/fries_model.dart';
import 'package:flutter_food_delivery_app/models/pizza_model.dart';

class FriesCarousel extends StatefulWidget {
  @override
  _FriesCarouselState createState() => _FriesCarouselState();
}

class _FriesCarouselState extends State<FriesCarousel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
        itemCount: pizzaList.length,
        itemBuilder: (BuildContext context, int index) {
          Fries chips = friesList[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 20.0),
                height: 170.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(110.0, 20.0, 20.0, 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,
                              color: Theme.of(context).primaryColor,
                              size: 25.0),
                          SizedBox(width: 3.0),
                          Text(
                            chips.rating,
                            style: TextStyle(
                                fontSize: 19.0, color: Colors.black26),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Text(
                            chips.name,
                            style: TextStyle(
                                fontSize: 21.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Text(chips.description,
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(height: 17.0),
                      Row(
                        children: <Widget>[
                          Text(
                            '£${chips.price}',
                            style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                bottom: 30.0,
                top: 12.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    width: 140,
                    image: AssetImage(chips.imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
