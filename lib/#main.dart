import 'package:flutter/material.dart';
import 'package:multi_form/#form.dart';
import 'package:multi_form/#multi_form.dart';
import 'package:multi_form/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Multiform(),
    );
  }
}
