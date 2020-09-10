import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  String _resultado = 'JOGUE PARA VENCER!';
  String _imagem = 'assets/padrao.png';
  var escolhaApp = [
    'assets/pedra.png',
    'assets/papel.png',
    'assets/tesoura.png'
  ];

  void gerarResultado(String objeto) {
    String imagem = escolhaApp[Random().nextInt(escolhaApp.length)];
    setState(() {
      _imagem = imagem;
      if (_imagem == 'assets/pedra.png' && objeto == 'pedra' ||
          _imagem == 'assets/papel.png' && objeto == 'papel' ||
          _imagem == 'assets/tesoura.png' && objeto == 'tesoura') {
        _resultado = 'EMPATE! TENTE NOVAMENTE!';
      } else if (_imagem == 'assets/pedra.png' && objeto == 'papel' ||
          _imagem == 'assets/papel.png' && objeto == 'tesoura' ||
          _imagem == 'assets/tesoura.png' && objeto == 'pedra') {
        _resultado = 'PARABÉNS, VOCÊ GANHOU!';
      } else {
        _resultado = 'NÃO FOI DESSA VEZ! :(';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'Escolha do App:',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(_imagem),
              SizedBox(
                height: 20,
              ),
              Text(
                _resultado,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => gerarResultado('pedra'),
                    child: Image.asset(
                      'assets/pedra.png',
                      width: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => gerarResultado('papel'),
                    child: Image.asset(
                      'assets/papel.png',
                      width: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => gerarResultado('tesoura'),
                    child: Image.asset(
                      'assets/tesoura.png',
                      width: 100,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
