import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangController1 extends ChangeNotifier {
  Locale loc1 = Locale("en");

  changLang1({required String langcode1}) async {
    final SharedPreferences shp1 = await SharedPreferences.getInstance();
    shp1.setString("local", langcode1);
    loc1 = Locale(langcode1);
    notifyListeners();
  }

  getLang() async {
    SharedPreferences shp = await SharedPreferences.getInstance();
     loc1 = (shp.getString("local") ?? "en") as Locale;
    notifyListeners();
  }
}
