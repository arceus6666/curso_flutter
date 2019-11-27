import 'package:flutter/material.dart';

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Ir a segunda pantalla'),
          onPressed: () {
            Navigator.pushNamed(context, '/segundo');
          },
        ),
      ),
    );
  }
}
