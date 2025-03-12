import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: homewid()));
}

class homewid extends StatefulWidget {
  const homewid({super.key});

  @override
  State<homewid> createState() => _homewidState();
}

class _homewidState extends State<homewid> {
  List<String> _frases = [
    "A vida é como um livro, e cada dia é uma nova página. Escreva algo incrível!",
    "Não importa a velocidade, o importante é nunca parar de caminhar rumo aos seus sonhos.",
    "As dificuldades preparam pessoas comuns para destinos extraordinários.",
    "Seja a energia que você quer atrair. O universo responde à sua vibração.",
    "Cada novo dia é uma nova chance para recomeçar e fazer melhor do que ontem.",
  ];

  var fraseAtual = "clique no botão para gerar uma nova frase";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Container(
          // width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                fraseAtual,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20),
              ),

              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  setState(() {
                    fraseAtual = _frases[Random().nextInt(_frases.length)];
                  });
                },
                child: Text(
                  "Gerar nova frase",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
