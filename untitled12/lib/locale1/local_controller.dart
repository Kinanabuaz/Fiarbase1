import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mylocalcontroller extends  GetxController{

  void ChangLang (String languageCode){
    Locale l1 = Locale(languageCode);
    Get.updateLocale(l1);
  }

}