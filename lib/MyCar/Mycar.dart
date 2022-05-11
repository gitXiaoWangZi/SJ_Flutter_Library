import 'package:flutter/material.dart';

class MyCar extends StatefulWidget {
  @override
  MyCarState createState() => MyCarState();
}

class MyCarState extends State<MyCar>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('我的车辆'),
      ),
      body: Center(
        child: Text('我的车辆'),
      ),
    );
  }
}