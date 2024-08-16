import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _opcoes = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png"
  ];
  String _imagemPrincipal = "images/padrao.png";

  void _mudarImagem() {
    setState(() {
      _imagemPrincipal = _opcoes[Random().nextInt(_opcoes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B8B8B),
      appBar: AppBar(
        title: const Text(
          "JokenPo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        //esse negocio de const é chato pra carahlo pqp
        backgroundColor: const Color(0xFF2196F3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Escolha do App",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(_imagemPrincipal, height: 100),
            const SizedBox(height: 20),
            const Text(
              "Minha escolha burra",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _opcoes.map((opcao) {
                return GestureDetector(
                  onTap: _mudarImagem,
                  child: Image.asset(opcao, height: 80),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
