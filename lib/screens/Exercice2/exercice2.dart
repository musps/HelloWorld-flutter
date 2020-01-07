import 'package:flutter/material.dart';

class Exercice2 extends StatefulWidget {
  final String title;

  Exercice2({Key key, this.title}) : super(key: key);
  _Exercice2 createState() => _Exercice2();
}

enum ButtonColor {
  grey,
  darkgrey,
  orange
}

class _Exercice2 extends State<Exercice2> {

  Expanded _button(String text, int flex, double padding, [ButtonColor bgColor, Color textColor = Colors.white]) {
    var buttonBg;
    switch (bgColor) {
      case ButtonColor.grey:
        buttonBg = Color(0xffa5a5a5);
        break;
      case ButtonColor.darkgrey:
        buttonBg = Color(0xff323232);
        break;
      case ButtonColor.orange:
        buttonBg = Color(0xfffa9f08);
        break;
      default:
        buttonBg = Color(0xff323232);
        break;
    }

    var buttonView = FlatButton(
      onPressed: () => print('On pressed button $text'),
      color: buttonBg,
      child: Text(
        text,
        style: TextStyle(color: textColor)
        ),
    );
    return Expanded(flex: flex, child: Padding(child: buttonView, padding: EdgeInsets.all(padding)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              _button('AC', 1, 5, ButtonColor.grey, Colors.black),
              _button('+/-', 1, 5, ButtonColor.grey, Colors.black),
              _button('%', 1, 5, ButtonColor.grey, Colors.black),
              _button('\u00F7', 1, 5, ButtonColor.orange),
            ],
          ),
          Row(
            children: [
              _button('7', 1, 5),
              _button('8', 1, 5),
              _button('9', 1, 5),
              _button('x', 1, 5, ButtonColor.orange),
            ],
          ),
          Row(
            children: [
              _button('4', 1, 5),
              _button('5', 1, 5),
              _button('6', 1, 5),
              _button('-', 1, 5, ButtonColor.orange),
            ],
          ),
          Row(
            children: [
              _button('1', 1, 5),
              _button('2', 1, 5),
              _button('3', 1, 5),
              _button('=', 1, 5, ButtonColor.orange),
            ],
          ),
          Row(
            children: [
              _button('0', 2, 5),
              _button(',', 1, 5),
              _button('=', 1, 5, ButtonColor.orange),
            ],
          ),
        ]
      )
    );
  }
}
