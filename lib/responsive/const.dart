import 'package:flutter/material.dart';

var myBackgroundColor = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[400],
);

var myDrawer = const Drawer(
  backgroundColor: Colors.grey,
  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Column(children: [
      DrawerHeader(
          child: Icon(
        Icons.design_services_rounded,
        size: 60,
      )),
      ListTile(
        title: Text("Home", style: TextStyle(letterSpacing: 2)),
        leading: Icon(Icons.home),
      ),
      ListTile(
        title: Text("Profile", style: TextStyle(letterSpacing: 2)),
        leading: Icon(Icons.person),
      ),
      ListTile(
        title: Text("Settings", style: TextStyle(letterSpacing: 2)),
        leading: Icon(Icons.settings),
      ),
    ]),
    ListTile(
      title: Text(
        "Logout",
        style: TextStyle(letterSpacing: 2),
      ),
      leading: Icon(Icons.logout_outlined),
    )
  ]),
);
