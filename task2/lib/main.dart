import 'package:flutter/material.dart';

import './screens/homescreen.dart';
import './widgets/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Community',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryTextTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 28.0,
            color: headerColor,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w800,
          ),
          headline2: TextStyle(
            fontSize: 19.0,
            color: textColor,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
