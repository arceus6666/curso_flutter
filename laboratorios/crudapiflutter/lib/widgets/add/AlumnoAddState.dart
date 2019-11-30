import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../global.dart';
import './AlumnoAdd.dart';

class AlumnoAddState extends State<AlumnoAdd> {
  TextEditingController controllerID = new TextEditingController();
  TextEditingController controllerNombres = new TextEditingController();
  TextEditingController controllerApellidos = new TextEditingController();
  TextEditingController controllerDocIdentidad = new TextEditingController();
  addAlumno() {
    var url = '$URL_ALUMNOS';
    http.post(url, body: {
      "id": controllerID.text,
      "nombres": controllerNombres.text,
      "apellidos": controllerApellidos.text,
      "doc_identidad": controllerDocIdentidad.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Alumno"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "ID",
                    labelText: "ID",
                  ),
                  controller: controllerID,
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
                  child: Text("Registrar"),
                  onPressed: () {
                    addAlumno();
                    Navigator.pop(context);
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
