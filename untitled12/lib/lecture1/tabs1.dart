import 'package:flutter/material.dart';
import 'package:untitled12/screen/home.dart';
import 'package:untitled12/screen/more.dart';
import 'package:untitled12/signup1.dart';

class Tabs1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.home, color: Colors.black,size: 40.0), text: "home"),
        Tab(icon: Icon(Icons.shopping_cart,color: Colors.black,size: 40.0),text: "cart"),
        Tab(icon: Icon(Icons.more,color: Colors.black,size: 40.0),text: "more",),
      ]),
      ),

    body: TabBarView(children: [
      Signup1(),Card(),More()
    ]),
    ));
  }
}
