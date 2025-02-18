import 'package:flutter/material.dart';
import 'package:untitled/room_page.dart';

void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar:AppBar(title: Text("Title"),) , 
       body: Container(child: const Text("shihab",style:TextStyle(
         color: Colors.blue ,
         fontWeight: FontWeight.w800,
         fontSize: 40.2,
         backgroundColor: Color(0xff789654),
       ) , ),)
      ) ,
      
      
      
    );
  }
}

