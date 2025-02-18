import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
int i = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(backgroundColor: Colors.amber,),

      body: Center(child: Text('mohammed')),

      floatingActionButton: FloatingActionButton(onPressed: (){
        
i++;
print(i);


      }),





    );
  }
}


