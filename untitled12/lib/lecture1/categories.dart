import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/lecture1/wolf.dart';

class Categories1 extends StatefulWidget {
  const Categories1({super.key});

  @override
  State<Categories1> createState() => _Categories1State();
}

class _Categories1State extends State<Categories1> {
  
  List<Wolf> shihab =[
    Wolf(name: "bingo", imageUrl: "https://play-lh.googleusercontent.com/gLwc96E1zDYjEFNGdCz2APcWYIjW1rHoxpnaoVxg6u14bsxdmJApiUKVA4ksSoAk_OU "),
    Wolf(name: "tatar", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0oh0dJxmeHmUO37LkJBVW0IJQAKlJiwKd7A&s")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ListView.builder(itemCount: shihab.length,scrollDirection: Axis.horizontal ,itemBuilder: (BuildContext context, int index) {
       return Column(children: [
         Text(shihab.elementAt(index).name),
         Image.network(shihab.elementAt(index).imageUrl)
       ],);
      } , ),
      
    );
  }
}
