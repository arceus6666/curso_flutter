import 'package:flutter/material.dart';
import './widgets/AleatorioWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generar aletorios 1 al 10',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generar aletorios 1 al 10'),
        ),
        body: Center(
          child: AleatorioWidget(),
        ),
      ),
    );
  }
}
