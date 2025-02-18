import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Login"),),backgroundColor: Colors.blueAccent,),
        body:  Container(
          child: Column(
            children: [
              TextField(
                enabled: true,
                 decoration: InputDecoration(
                     hintText: "user name" ,hintStyle: TextStyle(color: Colors.brown),
                  //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.5)),
                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 5.5),borderRadius: BorderRadius.circular(40.5)),
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40.5),borderSide: BorderSide(color: Colors.orange,width: 5.5)),
                   disabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(40.5),borderSide: BorderSide(color: Colors.black,width: 5.5))
                 ),
              ),

              TextField(
                decoration: InputDecoration(
                 border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 5.5  )),
                prefixText: "email :",prefixStyle: TextStyle(color: Colors.pink,fontSize: 10.5),
                fillColor: Colors.blue,filled: true,
                icon: Icon(Icons.person),iconColor: Colors.grey
                
              ),),
              TextField(decoration: InputDecoration(
                  labelText: "email",labelStyle: TextStyle(color: Colors.pink),
                  suffixIcon: Icon(Icons.person),iconColor: Colors.brown,
              ),),
            ],
          ),

        )

    );
  }
}
