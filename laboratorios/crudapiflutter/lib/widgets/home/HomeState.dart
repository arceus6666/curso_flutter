import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../global.dart';

import './Home.dart';
import '../alumno/AlumnosLista.dart';
import '../add/AlumnoAdd.dart';

class HomeState extends State<Home> {
  Future<List> obtenerAlumnos() async {
    final response = await http.get('$URL_ALUMNOS');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Alumnos'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) {
            return AlumnoAdd();
          },
        )),
      ),
      body: FutureBuilder<List>(
        future: obtenerAlumnos(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? AlumnosLista(alumnos: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
