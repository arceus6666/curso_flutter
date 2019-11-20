import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenido a Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido a Flutter'),
        ),
        body: Center(
          child: Text('Hola Mundo')
        ),
      ),
    );
  }
}
