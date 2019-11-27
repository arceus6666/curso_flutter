import 'package:flutter/material.dart';

import './models/InicioPantalla.dart';
import './models/PantallaArgumentos.dart';
import './models/PasarArgumentos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == PasarArgumentos.routeName) {
          final PantallaArgumentos args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PasarArgumentos(
                titulo: args.titulo,
                mensaje: args.mensaje,
              );
            },
          );
        }
      },
      title: 'Navegación con argumentos',
      home: InicioPantalla(),
    );
  }
}
