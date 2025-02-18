import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(WhatsAppHomePage());
}

class WhatsAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
      home: HomeScreen(),
    );
  }
}
