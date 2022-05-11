import 'package:flutter/material.dart';
import 'package:flutter_app/CustomWidget/ItemButton.dart';
import 'package:flutter_app/CustomWidget/MenuListItem.dart';
import 'package:flutter_app/MyCar/Mycar.dart';
import 'package:flutter_app/MyHouse/MyHouse.dart';
import 'package:flutter_app/MyMoney/MyMoney.dart';
import 'package:flutter_app/MySetting/MySetting.dart';

class mineVC extends StatefulWidget {
  @override
  mineVCState createState() => mineVCState();
}

class mineVCState extends State<mineVC> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ItemButton(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(8),
                    shadowColor: Colors.grey.shade50,
                    boxwidth: (MediaQuery.of(context).size.width - 50)/4,
                    boxheight: (MediaQuery.of(context).size.width - 50)*5/16,
                    icon: Icon(Icons.home,color: Colors.purpleAccent),
                    label: Text("我的房屋",textAlign:TextAlign.center),
                    onPressed: () => {
                      showAboutDialog(context: context,
                        applicationIcon: Icon(Icons.ac_unit),
                      applicationName: 'ceshi',
                      applicationVersion: '0.0.1',
                      applicationLegalese: 'liushengjie',
                      children: [
                        Container(

                        )
                      ])
                    },
                  ),
                  ItemButton(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(8),
                    shadowColor: Colors.grey.shade50,
                    boxwidth: (MediaQuery.of(context).size.width - 50)/4,
                    boxheight: (MediaQuery.of(context).size.width - 50)*5/16,
                    icon: Icon(Icons.car_rental,color: Colors.blueAccent),
                    label: Text("我的车辆",textAlign:TextAlign.center),
                    onPressed: () => {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return MyCar();
                        })
                      )
                    },
                  ),
                  ItemButton(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(8),
                    shadowColor: Colors.grey.shade50,
                    boxwidth: (MediaQuery.of(context).size.width - 50)/4,
                    boxheight: (MediaQuery.of(context).size.width - 50)*5/16,
                    icon: Icon(Icons.monetization_on_outlined,color: Colors.yellow),
                    label: Text("我的缴费",textAlign:TextAlign.center),
                    onPressed: () => {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return MyMoney();
                        })
                      )
                    },
                  ),
                  ItemButton(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(8),
                    shadowColor: Colors.grey.shade50,
                    boxwidth: (MediaQuery.of(context).size.width - 50)/4,
                    boxheight: (MediaQuery.of(context).size.width - 50)*5/16,
                    icon: Icon(Icons.build,color: Colors.green),
                    label: Text("我的报修",textAlign:TextAlign.center),
                    onPressed: () => {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return MySetting();
                        })
                      )
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Container(
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade50,
                          offset: Offset(0.0,16.0),
                          blurRadius: 10.0,
                          spreadRadius: 10.0
                      )
                    ],
                  ),
                  width: double.infinity,
                  height: 100,
                  child:Column(
                    children:[
                      MenuListItem(
                        icon: Icon(Icons.note_add_outlined),
                        title: Text('我的订单'),
                      ),
                      MenuListItem(
                        icon: Icon(Icons.email_outlined),
                        title: Text('我的业主建议'),
                      )
                    ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

