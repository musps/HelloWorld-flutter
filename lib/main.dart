import 'package:flutter/material.dart';
import 'screens/Exercice1/exercice1.dart';
import 'screens/Exercice2/exercice2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/calculator',
      routes: {
        '/': (context) => Exercice1(title: 'Flutter layout demo'),
        '/calculator': (context) => Exercice2(title: 'Flutter layout demo'),
      },
    );
  }
}
