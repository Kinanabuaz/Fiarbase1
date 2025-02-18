import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lecture1 extends StatelessWidget {
  const Lecture1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue ,title: Center(child: Text("page",style: TextStyle(height: 15.0,color: Colors.black),),),),
      body: Container(
         // width: 900,height: 900,color: Colors.brown,
        child: Wrap(children: [
          Image.asset("assest/image/download.jpg",fit: BoxFit.cover,),
          Container(width: 200,height: 200,color: Colors.orangeAccent,),
          Container(width: 200,height: 200,color: Colors.indigo,) ,
          Container(width: 200,height: 200,color: Colors.orangeAccent,) ,
          Container(width: 200,height: 200,color: Colors.black87,) ,
          Container(width: 200,height: 200,color: Colors.white24,) ,
          Container(width: 200,height: 200,color: Colors.lightGreen,) ,
          Container(width: 200,height: 200,color: Colors.green,) ,
          Container(width: 200,height: 200,color: Colors.pinkAccent,) ,
          Container(width: 200,height: 200,color: Colors.lightGreenAccent,) ,
          Container(width: 200,height: 200,color: Colors.white70,) ,
          Container(width: 200,height: 200,color: Colors.purpleAccent,) ,
          Container(width: 200,height: 200,color: Colors.black26,) ,
          Container(width: 200,height: 200,color: Colors.indigo,) ,
          Container(width: 200,height: 200,color: Colors.yellow,) ,
          Container(width: 200,height: 200,color: Colors.white,) ,
        ],),
      ),

    );
  }
}
