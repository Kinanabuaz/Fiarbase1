import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  String data = "";
  TextEditingController TextEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Text(data),
          SizedBox(height: 20.0,),
          TextField(controller: TextEC ,style: TextStyle(backgroundColor: Colors.black),),
          SizedBox(height: 20.0,),
          TextButton(onPressed: (){
             // TextEC.text = "hi";
          },child: Text("Set")),

          SizedBox(height: 20.0,),
          TextButton(onPressed: (){
            data = TextEC.text;
            setState(() {

            });
          }, child: Text("Get"))

        ],
      ),
    );
  }
}
