import 'dart:convert';
import 'package:flutter_json/flutter_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Screen5 extends StatefulWidget {
  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool loding = false;
  final List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text(
              "API",
              style: TextStyle(height: 15.0, color: Colors.black),
            ),
          ),
        ),
        body: ListView(children: [
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(30),
            width: 45,
            height: 45,
            child: MaterialButton(
              textColor: Colors.black,
              onPressed: () async {
                loding = true;
                setState(() {

                });
                var response = await get(
                    Uri.parse("https://jsonplaceholder.typicode.com/posts"));
                var responsebody = jsonDecode(response.body);
                data.addAll(responsebody);
                loding = false;
                setState(() {});
              },
              child: Text("http request"),
            ),
          ),
          if(loding)Center(child: CircularProgressIndicator()),
          ...List.generate(
            data.length,
                (i) =>
                Card(
                  color: i.isEven ? Colors.purpleAccent : Colors.brown,
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(" title =  ${data[i]['title']}  "),
                    leading: Text("${i + 1}"),
                    subtitle: Text("${data[i]['body']}"),
                  ),
                ),
          )
        ]));
  }
}
