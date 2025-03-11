import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Frase do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
              "lorem ipsum",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.black,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
