import 'package:flutter/material.dart';
import './pages/PrimeraPantalla.dart';
import './pages/SegundaPantalla.dart';
import './pages/TerceraPantalla.dart';

void main() {
  runApp(MaterialApp(
    title: 'Laboratorio de navegación',
    initialRoute: '/',
    routes: {
      '/': (context) => PrimeraPantalla(),
      '/segundo': (context) => SegundaPantalla(),
      '/tercero': (context) => TerceraPantalla(),
    },
  ));
}
