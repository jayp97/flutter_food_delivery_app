import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/BottomBar.dart';
import 'package:flutter_food_delivery_app/widgets/float_button.dart';
import 'package:flutter_food_delivery_app/models/data_model.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
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
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text(
                          "Total Cost",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '£${totalCost().toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: Provider.of<Data>(context).orderList.length,
              itemBuilder: (BuildContext context, int index) {
                OrderModel order = Provider.of<Data>(context).orderList[index];
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 20.0),
                      height: 100.0,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 10.0),
                              Text(
                                order.food.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                EnumToString.convertToString(order.sizeOfMeal),
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '£${(order.orderQuantity * order.food.price).toStringAsFixed(2)}',
                                style: TextStyle(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30.0,
                      top: 5.0,
                      child: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(order.food.imageUrl),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30.0,
                      top: 35.0,
                      child: QuantityButton(
                        quantity: order.orderQuantity,
                        onTapDown: () {
                          order.orderQuantity == 1
                              ? order.orderQuantity = 1
                              : Provider.of<Data>(context, listen: false)
                                  .updateOrderQuantityRemove(index);
                        },
                        onTapUp: () {
                          Provider.of<Data>(context, listen: false)
                              .updateOrderQuantityAdd(index);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        title: "Place Order",
      ),
    );
  }
}
