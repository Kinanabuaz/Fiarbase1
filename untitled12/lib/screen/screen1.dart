import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("Kenan"),
          )),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        alignment: Alignment.center,
        padding: EdgeInsets.all(50.5),
        margin: EdgeInsets.all(50.5),
        child: Column(
          children: [
            Text("RRRRR"),
            Text("FFFFFF"),
            Center(
              child: Column(
                children: [Text("LLLLLLLLL")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
