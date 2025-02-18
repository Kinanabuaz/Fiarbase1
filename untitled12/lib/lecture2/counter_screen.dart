import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/lecture2/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<CounterProvider>(
        builder: (context, CounterProvider, child) {
          print("Consumer");
          return Center(
            child: Text(CounterProvider.i.toString()),
          );
        },
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).addToI();
        },
         child: Icon(Icons.add),
       ),
    );
  }
}
