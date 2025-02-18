import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/view/page/screen_1.dart';
import 'package:untitled2/view/page/page_1.dart';
import 'package:untitled2/view/page/screen_2.dart';
import 'package:untitled2/view/page/screen_3.dart';
import 'package:untitled2/view/page/screen_4.dart';
import 'package:untitled2/view/page/screen_5.dart';
import 'controller/note_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Notecontroller(),
        )
      ],
      child: MaterialApp(
        home: Screen5(),
      ),
    );
  }
}
