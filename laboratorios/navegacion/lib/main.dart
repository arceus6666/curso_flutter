import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegacion Basica',
    home: PrimeraRuta(),
  ));
}

class PrimeraRuta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Ruta'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abrir segunda ruta'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRuta()),
            );
          },
        ),
      ),
    );
  }
}

class SegundaRuta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Ruta"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver a la primera ruta'),
        ),
      ),
    );
  }
}
