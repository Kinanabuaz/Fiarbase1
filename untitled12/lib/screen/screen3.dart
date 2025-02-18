import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Turst yourself"),),backgroundColor: Colors.blueAccent,  ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff1313FF),borderRadius: BorderRadius.all(Radius.circular(40.5)
        ),
            border: Border.all(color: Colors.black , width: 5),
          boxShadow: [
            BoxShadow(color: Colors.cyanAccent,offset: Offset(10, 10),spreadRadius: 2.5,blurRadius: 5),
            BoxShadow(color: Colors.pink,offset: Offset(-10, -10),spreadRadius: 2.5,blurRadius: 5)
          ]

        ) ,

        height: 300,width: 300,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(100.5),
        padding: EdgeInsets.all(20.5),

    child: Text("Kenan",style: TextStyle(color: Colors.amberAccent,backgroundColor: Colors.brown ,fontWeight: FontWeight.normal,fontSize: 70.5),
      ),
    ) ) ;
  }
}
