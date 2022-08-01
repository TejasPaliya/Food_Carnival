import 'package:flutter/material.dart';
class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/fcLogo.png',
              fit: BoxFit.contain,
              height: 67,
            ),
          ],
        ),
        backgroundColor: Colors.grey[300],
        toolbarHeight: 70,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.replay_outlined),
            color: Colors.grey[700],
            iconSize: 36,
          ),

        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
