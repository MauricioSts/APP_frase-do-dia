import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Aplicativo",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "conteudo principal do app",
            style: TextStyle(fontSize: 40),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(16),
          color: Colors.amber,
          child: Row(
            children: <Widget>[
              Text("texto 1"),
              Text("texto 2"),
              Text("texto 3"),
            ],
          ),
        ),
      ),
    ),
  );
}
