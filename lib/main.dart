import 'package:flutter/material.dart';
import 'package:nagasaki/pages/homePage.dart';
import 'package:nagasaki/pages/spotPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oide Nagasaki',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage().routeName: (BuildContext context) => HomePage(),
        SpotPage().routeName: (BuildContext context) => SpotPage(),
      },
    );
  }
}
