import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String alcoolText = 'ÁLCOOL';
  String gasolinaText = 'GASOLINA';
  String none = 'OU';

  TextEditingController controllerAlcool = TextEditingController();
  TextEditingController controllerGasolina = TextEditingController();

  void calcular(TextEditingController precoAlcool, precoGasolina) {
    double resultado;
    resultado = double.parse(precoGasolina.text);
    double alcool = double.parse(precoAlcool.text);
    if (resultado * 0.7 > alcool) {
      setState(() {
        gasolinaText = '';
        none = '';
      });
    } else {
      alcoolText = '';
      none = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Álcool ou Gasolina'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/logo.png'),
                Divider(
                  height: 40,
                ),
                Text(
                  'Saiba qual é a melhor opção para abastecimento do seu carro.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      alcoolText,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue),
                    ),
                    Text(
                      none,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                    Text(
                      gasolinaText,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço Álcool, ex.: 4.90',
                  ),
                  style: TextStyle(fontSize: 20),
                  controller: controllerAlcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço Gasolina, ex.: 5.79',
                  ),
                  style: TextStyle(fontSize: 20),
                  controller: controllerGasolina,
                ),
                Divider(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () =>
                      calcular(controllerAlcool, controllerGasolina),
                  child: Text(
                    'Calcular',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ));
  }
}
