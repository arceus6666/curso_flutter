import 'package:flutter/material.dart';

import './widgets/GameWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Juego de Frutas',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Juego de Frutas'),
            ),
            body: Center(child: GameWidget())));
  }
}
