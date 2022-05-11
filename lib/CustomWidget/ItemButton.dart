import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  ItemButton({
    this.color,
    this.borderRadius,
    this.shadowColor,
    this.boxwidth,
    this.boxheight,
    this.icon,
    this.label,
    this.onPressed,
  });

  final Color color;
  final Color shadowColor;

  final BorderRadiusGeometry borderRadius;

  final double boxwidth;
  final double boxheight;

  final Icon icon;

  final Text label;

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          decoration:BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(
                  color: shadowColor,
                  offset: Offset(0.0,0.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0
              )
            ],
          ),
          width: boxwidth,
          height: boxheight,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: icon
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: label
              )
            ],
          )
      ),
    );
  }
}