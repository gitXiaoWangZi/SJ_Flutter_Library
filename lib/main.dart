import 'package:flutter/material.dart';
import 'package:flutter_app/MyIcons.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Mine.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale('zh'),
      home: Index(),
    );
  }
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> pages = [];
  int _selectIndex = 0;

  @override
  void initState(){
    pages
      ..add(HomeVC())
      ..add(mineVC());
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: pages[_selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label: "我的"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        fixedColor: Colors.lightBlue,
        onTap: _onItemTaped
      ),
    );
  }

  _onItemTaped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
}
