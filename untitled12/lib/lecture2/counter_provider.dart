import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int i = 0;
  addToI(){
    i++;
    notifyListeners();
  }
}