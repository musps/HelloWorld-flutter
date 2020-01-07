import 'package:flutter/material.dart';

class EntryPoint extends StatefulWidget {
  EntryPoint({Key key, this.title}) : super(key: key);

  final String title;

  _EntryPoint createState() => _EntryPoint();
}

class _EntryPoint extends State<EntryPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Exercice 1a'),
            onTap: () => Navigator.pushNamed(context, '/place'),
          ),
          ListTile(
            title: Text('Exercice 1b'),
            onTap: () => Navigator.pushNamed(context, '/calculator'),
          ),
        ]
      )
    );
  }
}
