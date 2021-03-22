import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nabigator/tab_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(style);

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'FlutterStrip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PingFang',
      ),
      home: TabNavigator(),
    );
  }
}
