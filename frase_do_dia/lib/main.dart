import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Frase do dia",
      home: Column(
        children: <Widget>[
          Text("T1"), 
          Text("T2"),
          Text("T3")],
      ),
      //home:Container(color: Colors.white,),
    ),
  );
}
