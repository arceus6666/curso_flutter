import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../global.dart';
import 'dart:convert';

import './AlumnoDetalle.dart';
import '../editar/AlumnoEditar.dart';

class AlumnoDetalleState extends State<AlumnoDetalle> {
  Future<String> obtenerAlumno() async {
    final response =
        await http.get('$URL_ALUMNOS/${widget.alumnos[widget.index]["id"]}');
    Map<String, dynamic> alumno = jsonDecode(response.body);
    this.setState(() {
      widget.alumnos[widget.index] = alumno;
      // _docIdentidad = "${alumno['doc_identidad']}";
      // print('${alumno['id']}');
    });
    return 'OK';
  }

  eliminarAlumno() {
    var url = '$URL_ALUMNOS/${widget.alumnos[widget.index]["id"]}';
    http.delete(url);
  }

  @override
  void initState() {
    super.initState();
    this.obtenerAlumno();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alumno: ${widget.alumnos[widget.index]["nombres"]}"),
      ),
      body: Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Text(
                  "Id: ${widget.alumnos[widget.index]["id"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Nombres: ${widget.alumnos[widget.index]["nombres"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Apellidos: ${widget.alumnos[widget.index]["apellidos"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Doc Identidad: ${widget.alumnos[widget.index]["doc_identidad"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Editar"),
                      onPressed: () {
                        return Navigator.of(context)
                            .push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => AlumnoEditar(
                              alumnos: widget.alumnos,
                              index: widget.index,
                            ),
                          ),
                        )
                            .then((value) {
                          // print(value);
                          obtenerAlumno();
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        "Eliminar",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        eliminarAlumno();
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
