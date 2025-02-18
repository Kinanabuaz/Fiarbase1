import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/screen/card.dart';
import 'package:untitled12/screen/more.dart';
import 'package:untitled12/screen/screen4.dart';
import 'package:untitled12/signup1.dart';

import '../screen/home.dart';

class Drawer1 extends StatefulWidget {

  @override
  State<Drawer1> createState() => _State();
}

class _State extends State<Drawer1> {
  Widget selectedWidget = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: selectedWidget ,
       drawer: Drawer(child: ListView(
       // padding: EdgeInsets.zero,
        children: [
        DrawerHeader(decoration: BoxDecoration(color: Colors.blue),child: Text(" DrawerHeader"),),
        ListTile(title: Text("home",style: TextStyle(color: Colors.black,),),leading: Icon(Icons.home), trailing: Icon(Icons.arrow_forward),
        onTap: (){
          selectedWidget = Card1();
          setState(() {
              Navigator.pop(context);
          });
        },
        ),
        ListTile(
          onTap: (){
            selectedWidget = Signup1();
            setState(() {

            });},
          title: Text("cart",style: TextStyle(color: Colors.black,),),leading: Icon(Icons.shopping_cart)

        ),
        ListTile(title: Text("more",style: TextStyle(color: Colors.black,),),leading: Icon(Icons.more),
            onTap: (){
              selectedWidget = Screen4();
              setState(() {
                Navigator.pop(context);
              });}
        )


      ],),),


    );
  }
}
