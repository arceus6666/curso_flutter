import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Pantalla"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver a la primera pantalla'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tercero');
              },
              child: Text('Ir a tercera pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}
