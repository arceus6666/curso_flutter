import 'package:flutter/material.dart';
import './PantallaArgumentos.dart';

class ObtenerArgumentos extends StatelessWidget {
  static const routeName = '/extractArguments';
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final PantallaArgumentos args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.titulo),
      ),
      body: Center(
        child: Text(args.mensaje),
      ),
    );
  }
}
