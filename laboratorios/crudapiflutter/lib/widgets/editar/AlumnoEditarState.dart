import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../global.dart';

import './AlumnoEditar.dart';

class AlumnoEditarState extends State<AlumnoEditar> {
  TextEditingController controllerNombres;
  TextEditingController controllerApellidos;
  TextEditingController controllerDocIdentidad;
  editarAlumno() {
    var url = '$URL_ALUMNOS/${widget.alumnos[widget.index]["id"]}';
    // print(b);
    http.put(url, body: {
      "id": widget.alumnos[widget.index]["id"].toString(),
      "nombres": controllerNombres.text,
      "apellidos": controllerApellidos.text,
      "doc_identidad": controllerDocIdentidad.text
    });
  }

  @override
  void initState() {
    controllerNombres = TextEditingController(
      text: widget.alumnos[widget.index]["nombres"].toString(),
    );
    controllerApellidos = TextEditingController(
      text: widget.alumnos[widget.index]["apellidos"].toString(),
    );
    controllerDocIdentidad = TextEditingController(
      text: widget.alumnos[widget.index]["doc_identidad"].toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Alumno"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Id: ${widget.alumnos[widget.index]["id"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Nombres",
                    labelText: "Nombres",
                  ),
                  controller: controllerNombres,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Apellidos",
                    labelText: "Apellidos",
                  ),
                  controller: controllerApellidos,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Doc Identidad",
                    labelText: "Doc Identidad",
                  ),
                  controller: controllerDocIdentidad,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text("Actualizar"),
                  onPressed: () {
                    editarAlumno();
                    Navigator.pop(context, widget.alumnos[widget.index]["id"]);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
