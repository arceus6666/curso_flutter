import 'package:flutter/material.dart';

class TerceraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tercera Pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver a la segunda pantalla'),
        ),
      ),
    );
  }
}
