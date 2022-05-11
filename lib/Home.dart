import 'package:flutter/material.dart';

class HomeVC extends StatefulWidget {
  @override
  HomeVCState createState() => HomeVCState();
}

class HomeVCState extends State<HomeVC> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('首页'),
      ),
    );
  }
}