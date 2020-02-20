import 'package:flutter/material.dart';
import 'package:stay_fit_app/login.dart';

import './login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF0277BD)),
      home: new LoginPage(),
    );
  }
}








