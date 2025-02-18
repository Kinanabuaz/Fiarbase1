import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/screen/more.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Center(child: TextButton(onPressed: (){
        Navigator.push(context,
             MaterialPageRoute(builder: (context) => More(),));
      },
        child: Text("Next",style: TextStyle(backgroundColor: Colors.black,fontSize: 20.0),)
      ),),);
  }
}
