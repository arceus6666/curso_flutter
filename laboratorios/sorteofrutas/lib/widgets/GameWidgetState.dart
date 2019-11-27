import 'dart:math';

import 'package:flutter/material.dart';

import './GameWidget.dart';

class GameWidgetState extends State<GameWidget> {
  bool win = false;
  var random = ['assets/cereza.png', 'assets/cereza.png', 'assets/cereza.png'];
  int intentos = 0;
  static const frutas = [
    'assets/cereza.png',
    'assets/frambuesa.png',
    'assets/frutilla.png',
    'assets/manzana.png',
    'assets/naranja.png',
    'assets/pinia.png',
    'assets/sandia.png',
    'assets/uva.png'
  ];
  void playerClick() {
    setState(() {
      // win = !win;
      if (!win) {
        var rnd = [
          new Random().nextInt(8),
          new Random().nextInt(8),
          new Random().nextInt(8)
        ];
        random = [frutas[rnd[0]], frutas[rnd[1]], frutas[rnd[2]]];
        if (random[0] == random[1] && random[0] == random[2]) {
          win = true;
        } else {
          intentos++;
        }
      } else {
        intentos = 0;
        win = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Nro. Intentos: $intentos'),
        Row(
          children: <Widget>[
            Expanded(
              child: Image.asset(random[0]),
            ),
            Expanded(
              child: Image.asset(random[1]),
            ),
            Expanded(
              child: Image.asset(random[2]),
            ),
          ],
        ),
        IconButton(
            icon: Icon(Icons.autorenew),
            iconSize: 50.0,
            onPressed: () {
              playerClick();
            }),
        Text(
          win ? 'Ganador !!!' : 'Juega',
          style: new TextStyle(fontSize: 24.0),
        )
      ],
    ));
  }
}
