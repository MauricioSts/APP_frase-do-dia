import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeState()));
}

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeState> {
  var _texto = "ola";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Aplicativo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _texto = "mau";
                });
              },
              child: Text("clique aqui", style: TextStyle(fontSize: 20)),
            ),
            Text(_texto, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
