import 'package:flutter/material.dart';

import '../detalle/AlumnoDetalle.dart';

class AlumnosLista extends StatelessWidget {
  final List alumnos;
  AlumnosLista({this.alumnos});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: alumnos == null ? 0 : alumnos.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            child: Card(
              child: ListTile(
                title: Text(alumnos[i]["nombres"]),
                leading: Icon(Icons.person),
                subtitle: Text("Id: ${alumnos[i]['id']}"),
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => AlumnoDetalle(
                  alumnos: alumnos,
                  index: i,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
