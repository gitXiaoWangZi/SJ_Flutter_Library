import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  @override
  MySettingState createState() => MySettingState();
}

class MySettingState extends State<MySetting>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的报修'),
      ),
      body: Center(
        child: Text('我的报修'),
      ),
    );
  }
}