import 'package:flutter/material.dart';

class Roompage2 extends StatefulWidget {
  const Roompage2({super.key});

  @override
  State<Roompage2> createState() => _Roompage2State();
}

class _Roompage2State extends State<Roompage2> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
      body: Column(),
      
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              i++;
            });

          }
      ),

    );

  }
}
