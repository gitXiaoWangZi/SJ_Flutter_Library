import 'package:flutter/material.dart';

class MyHouse extends StatefulWidget {
  @override
  MyHouseState createState() => MyHouseState();
}

class MyHouseState extends State<MyHouse>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: Text("我的房屋"),
        ),
        body: Center(
          child:(
              Text('ddddddds')
          )
        )
    );
  }
}