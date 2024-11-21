import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget{
  var width;
  var height;
  var child;
  var color;
  CoustomContainer({this.width,this.height,this.child,this.color,});
  @override
  Widget build(BuildContext context) {
    return Container(width: width,height: height,child: child,color:color,);
  }
}