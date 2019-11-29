import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Tarea {
  final String titulo;
  final String descripcion;
  Tarea(this.titulo, this.descripcion);
}

void main() {
  runApp(MaterialApp(
    title: 'Pasar Datos',
    home: TareasScreen(
      tareas: List.generate(
        20,
        (i) => Tarea(
          'Tarea $i',
          'Una descripción que necesitas hacer en la tarea: $i',
        ),
      ),
    ),
  ));
}

class TareasScreen extends StatelessWidget {
  final List<Tarea> tareas;
  TareasScreen({Key key, @required this.tareas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tareas'),
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index].titulo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleScreen(tarea: tareas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetalleScreen extends StatelessWidget {
  final Tarea tarea;
  DetalleScreen({Key key, @required this.tarea}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tarea.titulo),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(tarea.descripcion),
      ),
    );
  }
}
