import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/modle/post_modle.dart';
class Postcontrooler extends ChangeNotifier{

  List<postModle> list = [];
getAllpost()async{

var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

if(res.statusCode == 200){
  var resbody = jsonDecode(res.body);
  for(Map i in resbody){
    list.add(postModle.fromJson(i));
  }
}

}

}