import 'package:flutter/material.dart';
import './AlumnoEditarState.dart';

class AlumnoEditar extends StatefulWidget {
  final List alumnos;
  final int index;
  AlumnoEditar({this.alumnos, this.index});
  @override
  AlumnoEditarState createState() => AlumnoEditarState();
}
