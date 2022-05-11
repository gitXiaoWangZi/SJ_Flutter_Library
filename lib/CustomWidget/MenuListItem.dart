import 'package:flutter/material.dart';

class MenuListItem extends StatelessWidget{

  MenuListItem({
    this.title,
    this.icon,
    this.onPress,
    this.height
  });

  final Text title;

  final Icon icon;

  final GestureTapCallback onPress;

  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(right: 10),child: icon,),
            Expanded(flex: 1,child: title),
            Align(
              alignment: Alignment.centerRight,
              child: Text('>'),
            )
          ],
        )
      )
    );

  }
}