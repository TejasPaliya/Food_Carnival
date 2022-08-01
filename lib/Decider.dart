import 'package:flutter/material.dart';
import 'package:food_carnival/MyOrder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class Decider extends StatefulWidget {
  const Decider({Key? key}) : super(key: key);

  @override
  State<Decider> createState() => _DeciderState();
}

class _DeciderState extends State<Decider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Carnial",
      debugShowCheckedModeBanner: false,
      home: MyOrder(),
    );
  }
}
