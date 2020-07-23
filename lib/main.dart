import 'package:control_scan/page/home.dart';
import 'package:flutter/material.dart';
import 'package:control_scan/page/barras.dart';

import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
    );
  }
}
