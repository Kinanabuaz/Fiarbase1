import 'package:apptranig12/views_screnn/sattings.dart';
import 'package:apptranig12/views_screnn/updetes.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'calls.dart';
import 'chats_screen.dart';
import 'matters.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int index = 0;

  List<Widget> screens = [
    SettingsScreen(),
    IosChatListScreen(),
    CommunitiesScreen(),
    CallsScreen(),
    UpdatesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: buildNavBar(),
      ),
    );
  }

  buildNavBar() {
    return PersistentTabView(
      context,
      screens: screens,
      navBarHeight: 60,
      navBarStyle: NavBarStyle.style13,
      onItemSelected: (iNndex) => setState(() => this.index = iNndex),
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("Settings"),
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.chat),
          title: ("Chat"),
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.group),
          title: ("Communities"),
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.call_sharp),
          title: ("Calls"),
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.update),
          title: ("Updates"),
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      resizeToAvoidBottomInset: true,
      handleAndroidBackButtonPress: true,
      confineToSafeArea: true,
      onWillPop: (c) async {
        return Future.value(false);
      },
    );
  }
}
