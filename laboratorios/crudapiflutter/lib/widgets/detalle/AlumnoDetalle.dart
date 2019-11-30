import 'package:flutter/material.dart';

import './AlumnoDetalleState.dart';

class AlumnoDetalle extends StatefulWidget {
  final List alumnos;
  final int index;
  AlumnoDetalle({this.alumnos, this.index});
  @override
  AlumnoDetalleState createState() => AlumnoDetalleState();
}