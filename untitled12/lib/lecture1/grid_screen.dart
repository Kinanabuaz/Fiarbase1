import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/lecture1/wolf.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<Wolf> kenan = [
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),
    Wolf( name: "samwel", imageUrl: "assets/images/download.jpg"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(itemCount: kenan.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
        return Container
          (
          color: Colors.blue,
          child: Column(
            children: [
              Text(kenan.elementAt(index).name),
              Image.asset(kenan.elementAt(index).imageUrl,width: 200,height: 200,fit: BoxFit.cover,),
            ],
          ),
        );
      },),
    );
  }
}
