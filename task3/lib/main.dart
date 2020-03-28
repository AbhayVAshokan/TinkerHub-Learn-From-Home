import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/LoginScreen/login_screen.dart';

void main() {

SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF166C28), 
  ));
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Backflip Cart',
      theme: ThemeData.light().copyWith(primaryColor: Colors.lightGreen,
      ),
      home: LoginScreen(),
    );
  }
}
