import 'package:flutter/material.dart';
import 'dart:math';

import './AleatorioWidget.dart';

class AleatorioWidgetState extends State<AleatorioWidget> {
  int prev = 0;
  int numero = 1;
  int rep = 1;
  void generarAletorioClick() {
    setState(() {
      var rnd = new Random();
      prev = numero;
      numero = rnd.nextInt(10) + 1;
      if (prev == numero) {
        rep++;
      } else {
        rep = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Text(
            'Numero Aletorio ${numero}x$rep ',
            style: new TextStyle(fontSize: 24.0),
          ),
          RaisedButton(
            child: Text('Generar Aletorio'),
            onPressed: () {
              generarAletorioClick();
            },
          )
        ],
      ),
    );
  }
}
