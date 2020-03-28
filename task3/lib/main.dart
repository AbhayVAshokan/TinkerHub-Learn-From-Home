import 'package:flutter/material.dart';

import './screens/LoginScreen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Backflip Cart',
      theme: ThemeData.dark(),
      home: LoginScreen(),
    );
  }
}
