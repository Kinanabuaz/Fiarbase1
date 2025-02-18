import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});

  final List employe = [
    {"name": "kenan", "age": 24},
    {"name": "zaid", "age": 22},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
    {"name": "shihap", "age": 86},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Text(
            "Employes",
            style: TextStyle(height: 15.0, color: Colors.black),
          ),
        ),
      ),
      body: GridView.builder(
        // scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 4,),
        itemCount: employe.length,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            width: 50,
            height: 50,
            color: i.isOdd ? Colors.purple : Colors.blue,
            child: Text(
              employe[i]["name"],
              style: TextStyle(height: 15, color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
