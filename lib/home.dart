import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "Nunca é tarde para quem quer aprender. A cada dia é uma oportunidade para crescer.",
    "Acredite que você pode fazer a diferença. Seja a mudança que deseja ver no mundo."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(_fraseGerada.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image
              //text
              //button
              Image.asset("images/frasesDoDia.png"),
              Text(
                _fraseGerada,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size(220.0, 80.0)),
                  onPressed: () {
                    gerarFrase();
                  },
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
