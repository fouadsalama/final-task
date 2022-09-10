import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/mycart.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.deepOrange),
    appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    elevation: 0.0,
    ),
        ),
      home: MyCart(),
    );
  }
}
