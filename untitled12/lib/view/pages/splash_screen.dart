import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/lecture5/page_1.dart';
import 'package:untitled12/lecture5/provider_local1.dart';
import '../../controllerr/provider_local.dart';
import 'home_screen1.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Provider.of<LangController1>(context, listen: false).getLang();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Page1(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(appBar: AppBar(
      title: Center(child: Column(children: [
        Text("Title", style: TextStyle(color: Colors.black),)
      ],),), backgroundColor: Colors.blue,),
      body: Container(child: Column(children: [ Text("shihab", style: TextStyle(
        color: Colors.blue,
        fontSize: 40.4,
        fontWeight: FontWeight.w800,
        backgroundColor: Colors.black,),
      ),
      ],),
        alignment: Alignment.center,
        padding: EdgeInsets.all(250),
      ),);
  }


}