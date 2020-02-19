import 'package:flutter/material.dart';
import 'package:myApp/Menu.dart';
import 'package:myApp/Orders.dart';
import 'package:myApp/Profile.dart';
import 'package:myApp/Settings.dart';
import 'HomePage.dart';
import 'Login.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/menu' : (BuildContext context)=> Menu(),
        '/profile' : (BuildContext context)=> Profile(),
        '/orders' : (BuildContext context)=> Orders(),
        '/settings' : (BuildContext context)=> Settings(),
      }
    );
  }
}