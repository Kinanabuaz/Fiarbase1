import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/lecture5/provider_local1.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "Page",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(3.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30.0),
                Text(AppLocalizations.of(context)!.user_name),
                SizedBox(
                  height: 30.0,
                ),
                Text(AppLocalizations.of(context)!.password),
                SizedBox(
                  height: 30.0,
                ),
                Text(AppLocalizations.of(context)!.email),
                SizedBox(
                  height: 30.0,
                ),
                Text(AppLocalizations.of(context)!.phone),
                SizedBox(
                  height: 30.0,
                ),
                TextButton(onPressed: (){
                  Provider.of<LangController1>(context,listen: false).changLang1(langcode1: "ar");

                }, child: Text("AR")),
                TextButton(onPressed: (){
                  Provider.of<LangController1>(context,listen: false).changLang1(langcode1: "en");

                }, child: Text("EN")),
                TextButton(onPressed: (){
                  Provider.of<LangController1>(context,listen: false).changLang1(langcode1: "es");

                }, child: Text("Espalier"))
              ],
            ),
          ),
        ));
  }
}
