import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Employes",
            style: TextStyle(height: 15.0, color: Colors.black),
          ),
        ),
      ),
      body: Container(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.purpleAccent,
                  thickness: 3.0,
                );
              },
              itemCount: employe.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 50,
                    height: 50,
                    color: index.isEven ? Colors.indigo : Colors.green,
                    child: Text(
                      employe[index]["name"],
                      textAlign: TextAlign.center,
                    ));
              })),
    );
  }
}
