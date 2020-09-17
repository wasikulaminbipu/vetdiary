import 'package:flutter/material.dart';
import 'package:vetdiary/dashboard.dart';
import 'package:vetdiary/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vet Diary',
      theme: vTheme, //Custom Theme from Penache
      home: Dashboard(),
    );
  }
}
