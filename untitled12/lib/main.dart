import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/Lecture4/login_screen1.dart';
import 'package:untitled12/controllerr/provider_local.dart';
import 'package:untitled12/lecture1/drawer1.dart';
import 'package:untitled12/lecture1/grid_screen.dart';
import 'package:untitled12/lecture1/tabs1.dart';
import 'package:untitled12/lecture2/counter_screen.dart';
import 'package:untitled12/lecture3/login.controller.dart';
import 'package:untitled12/lecture5/page_1.dart';
import 'package:untitled12/screen/Screen5.dart';
import 'package:untitled12/screen/card.dart';
import 'package:untitled12/screen/home.dart';
import 'package:untitled12/screen/screen1.dart';
import 'package:untitled12/screen/screen2.dart';
import 'package:untitled12/screen/screen3.dart';
import 'package:untitled12/screen/screen4.dart';
import 'package:untitled12/signup.dart';
import 'package:untitled12/signup1.dart';
import 'package:untitled12/view/pages/home_page.dart';
import 'package:untitled12/view/pages/home_screen1.dart';
import 'package:untitled12/view/pages/items_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled12/view/pages/splash_screen.dart';
import 'package:untitled12/view/widget/Myapp.dart';
import 'Lecture4/input_widget.dart';
import 'Lecture4/login_controller.dart';
import 'controllerr/LoginController.dart';
import 'controllerr/item_controller.dart';
import 'lecture1/categories.dart';
import 'lecture2/counter_provider.dart';
import 'lecture3/login.screen.dart';
import 'lecture5/provider_local1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CounterProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => Logincintroller(),
          ),
          ChangeNotifierProvider(
            create: (context) => LangeController(),
          ),
          ChangeNotifierProvider(
            create: (context) => ItemController(),
          ),
          ChangeNotifierProvider(
            create: (context) => LangController1(),
          ),

          ChangeNotifierProvider(
            create: (context) => LoginController2(),
          ),


        ],
        child:MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Localizations Sample App',
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('en'), // English
                Locale('es'),
                Locale("ar"),// Spanish
              ],
              locale: LoginController2().locale,
              home: GridScreen(),
            ),);


  }
}

// child: Consumer<LangeController>
// (builder: (context, value, child) {
// return MaterialApp(
// localizationsDelegates: [
// AppLocalizations.delegate,
// GlobalMaterialLocalizations.delegate,
// GlobalWidgetsLocalizations.delegate,
// GlobalCupertinoLocalizations.delegate,
// ],
// locale: Locale("ar"),
// supportedLocales: [
// Locale('en'), // English
// Locale('es'), // Spanish
// Locale('ar'), // Spanish
// ],
// debugShowCheckedModeBanner: false,
// home: Card1(),
// );
// },
// ),
