import 'package:flutter/material.dart';
import 'auth.dart';
import 'root_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Stay Fit App',
      theme: ThemeData(primaryColor: Color(0xFF0277BD)),
      home: new RootPage(auth: new Auth())
    );
  }
}








