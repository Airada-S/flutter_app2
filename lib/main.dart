import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/Login.dart';
import 'package:flutter_app2/pages/home.dart';
import 'package:flutter_app2/pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: {'/index-page' : (context) => IndexPage()},
    );
    throw UnimplementedError();
  }
}
