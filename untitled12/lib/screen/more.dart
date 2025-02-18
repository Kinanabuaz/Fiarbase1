import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(),
      body: Center(child: TextButton(onPressed:()
      {
        Navigator.pop(context);
      }, child: Text("Back",style: TextStyle(color: Colors.black),))
        ,),
    );
  }
}
