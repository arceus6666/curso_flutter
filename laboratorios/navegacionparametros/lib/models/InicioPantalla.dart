import 'package:flutter/material.dart';

import './ObtenerArgumentos.dart';
import './PantallaArgumentos.dart';
import './PasarArgumentos.dart';

class InicioPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("extraemos argumentos"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ObtenerArgumentos(),
                    settings: RouteSettings(
                      arguments: PantallaArgumentos(
                        'titulo de argumento 1',
                        'Mensaje del argumento 1',
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Navegación aceptando argumentos"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PasarArgumentos.routeName,
                  arguments: PantallaArgumentos(
                    'Titulo de aceptacion 2',
                    'Mensaje de aceptacion 2',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
