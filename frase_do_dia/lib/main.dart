import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      home: Container(
        //color: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        margin: EdgeInsets.only(top: 30),
        //margin: EdgeInsets.only(top: 50, left: 50),
        //margin: EdgeInsets.fromLTRB(10, 60, 30, 40),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white),
        ),
        child: Image.asset("images/terra.jpg", fit: BoxFit.cover),
      ),
    ),
  );
}
