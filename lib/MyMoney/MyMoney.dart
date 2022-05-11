import 'package:flutter/material.dart';

class MyMoney extends StatefulWidget {
  @override
  MyMoneyState createState() => MyMoneyState();
}

class MyMoneyState extends State<MyMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('我的缴费'),
      ),
      body: Center(
        child: Text('我的缴费'),
      ),
    );
  }
}