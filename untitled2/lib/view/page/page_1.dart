import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String data = "";

  TextEditingController input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(data),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: input,
          ),
          TextButton(
              onPressed: () async {
                try {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setString('datakey', input.text);
                } catch (r) {
                  print(r);
                }
              },
              child: Text("save")),
          TextButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.remove('datakey');
              },
              child: Text("remove")),
          TextButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                data = prefs.getString('datakey') ?? "";
                setState(() {});
              },
              child: Text("Get data")),
        ],
      ),
    );
  }
}
