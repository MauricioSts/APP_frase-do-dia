import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Frase do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                print("pressionado");
              },
              child: Text(
                "Clique aqui",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
