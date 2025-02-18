import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends ChangeNotifier {
  bool showErrorEmail = false;
  bool showErrorPassword = false;
  bool obscureTextPassword = true;
  Locale locale = Locale("en");
  String? email;
  String? password;
  bool rememberMe = false;

  checkEmail({required String emaile}) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    showErrorEmail = !regExp.hasMatch(emaile);
    notifyListeners();
  }
  checkPassword({required String password}){
    showErrorPassword =password.isEmpty;
    notifyListeners();
  }
  changeObscureTextPassword(){
    obscureTextPassword = !obscureTextPassword;
    notifyListeners();
  }
  changeLang({required String langCode}){
    locale=Locale(langCode);
    notifyListeners();
  }

   loadCredentials() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    rememberMe = prefs.getBool('rememberMe') ?? false;
    if (rememberMe) {
      email = prefs.getString('email') ?? '';
      password = prefs.getString('password') ?? '';
    }
    notifyListeners();
  }

   saveCredentials(String email, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (rememberMe) {
      await prefs.setBool('rememberMe', true);
      await prefs.setString('email', email);
      await prefs.setString('password', password);
    } else {
      await prefs.remove('rememberMe');
      await prefs.remove('email');
      await prefs.remove('password');
    }
    notifyListeners();
  }

  toggleRememberMe(bool value) {
    rememberMe = value;
    notifyListeners();
  }

}