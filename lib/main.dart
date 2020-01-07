import 'package:flutter/material.dart';
import 'screens/Exercice1/exercice1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Exercice1(title: 'Flutter layout demo'),
    );
  }
}
