 import 'package:flutter/material.dart';
 import 'package:shared_preferences/shared_preferences.dart';

 class LangeController extends ChangeNotifier {

   Locale loc = Locale("en");

   changeLang({required String langCode}) async {
     loc = Locale(langCode);
     final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("lang", langCode);
     notifyListeners();
   }

   getLang() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     String langCode =  prefs.getString("lang") ?? "en";
     loc = Locale(langCode);
     notifyListeners();
  }}
