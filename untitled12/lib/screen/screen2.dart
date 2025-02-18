import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( title:Center(child: Column(children: [Text("Title",style: TextStyle(color: Colors.black),)],),),backgroundColor: Colors.blue, ),
    body: Container( child: Column(children: [ Text("shihab",style:TextStyle(color : Colors.blue ,fontSize: 40.4,fontWeight: FontWeight.w800,backgroundColor: Colors.black, ),
    ),] ,) ,
      alignment: Alignment.center,
      padding: EdgeInsets.all(250),
    ),);
  }
}
