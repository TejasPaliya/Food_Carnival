

import 'package:flutter/material.dart';
import 'package:food_carnival/View.dart';

import 'Decider.dart';
import 'Orders.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  int currentIndex = 0;
 Decider MyObj=Decider();
final MyScreen=[
  Orders(),
  View()
  ];
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.grey[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              color: Colors.grey[700],
              size: 32,
            ),
            label: "Order",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history_toggle_off,
                color: Colors.grey[700],
                size: 32,
              ),
              label: "View")
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
      ),
          body: MyScreen[currentIndex],
    )
    );
  }
}
