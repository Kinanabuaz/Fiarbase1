import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("shared preferences"),
        ),
      ),
      body: ListView(children: [
        MaterialButton(onPressed: () async{
           SharedPreferences shp = await SharedPreferences.getInstance();
           shp.setString("name", "Kenan");
        }, child: Text("Set name"),
        ),
        MaterialButton(onPressed: () async{
          SharedPreferences shp = await SharedPreferences.getInstance();
           String? name  = shp.getString("name");
           print(name);
        }, child: Text("Print name"),)

      ],)
    );
  }
}
