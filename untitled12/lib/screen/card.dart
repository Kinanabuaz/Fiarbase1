import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../locale1/local_controller.dart';

class Card1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Mylocalcontroller mylocalcontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("1".tr,style: TextStyle(color: Colors.black),),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: Colors.black,
              onPressed: (){
                mylocalcontroller.ChangLang("ar");
            }, child: Text("2".tr,style: TextStyle(color: Colors.white),),),
          ),
          Center(
            child: MaterialButton(
              color: Colors.black,
                onPressed:(){
                  mylocalcontroller.ChangLang("en");
                },child: Text("3".tr,style: TextStyle(color: Colors.white),),),
          )
        ],
      )

    );

  }
}
