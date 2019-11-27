import 'package:flutter/material.dart';

class PasarArgumentos extends StatelessWidget {
  static const routeName = '/passArguments';
  final String titulo;
  final String mensaje;
  const PasarArgumentos({
    Key key,
    @required this.titulo,
    @required this.mensaje,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: Text(mensaje),
      ),
    );
  }
}
