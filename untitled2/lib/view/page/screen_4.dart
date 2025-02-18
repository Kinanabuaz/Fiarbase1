import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text(
              "Card And ListTitle",
              style: TextStyle(height: 15.0, color: Colors.black),
            ),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              isThreeLine: true,
              onTap: () {
                print("kenan");
              },
              title: Text("kenan"),
              subtitle: Text("age"),
              leading: Text("1"),
              trailing: Text("2025"),
            ),
            Divider(
              thickness: 20,
              color: Colors.brown,
            ),
            ListTile(
              enabled: false,
              onTap: () {
                print("shihap");
              },
              title: Text("shihap"),
              subtitle: Text("age"),
              leading: Text("2"),
              trailing: Text("2025"),
            ),
            Card(
                color: Colors.brown,
                child: ListTile(
                  title: Text("omar"),
                  subtitle: Text("age"),
                  leading: Text("3"),
                  trailing: Text("2025"),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )),

          ],
        ));
  }
}
