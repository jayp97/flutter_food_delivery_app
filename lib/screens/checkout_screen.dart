import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/BottomBar.dart';
import 'package:flutter_food_delivery_app/widgets/float_button.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
import 'package:flutter_food_delivery_app/widgets/order_summary_builder.dart';
import 'package:flutter_food_delivery_app/widgets/quantity_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_food_delivery_app/models/order_model.dart';
import 'package:enum_to_string/enum_to_string.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double totalCost() {
      double itemTotal;
      double overallCost = 0;
      for (OrderModel order in Provider.of<Data>(context).orderList) {
        itemTotal = order.orderQuantity * order.food.price;
        overallCost += itemTotal;
      }
      return overallCost;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.0,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: FloatButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                width: 33.0,
              ),
              Text(
                "Order Summary",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Container(
              width: 190.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Cost: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      '£${totalCost().toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          OrderSummaryBuilder(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        title: "Place Order",
      ),
    );
  }
}
