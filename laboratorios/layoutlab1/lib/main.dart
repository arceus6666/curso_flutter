import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos a Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos a Flutter'),
        ),
        /* 
        body: Center(
          child: Text('Hola mundo'),
        ), */
        /* container
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        ), */
        /* padding
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: const Card(child: Text('Hola mundo !')),
        ), */
        /* align
        body: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ), */
        /* sized box
        body: SizedBox(
          width: 200.0,
          height: 300.0,
          child: const Card(child: Text('Hello World!')),
        ), */
        /* stack
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
            ],
          ),
        ), */
        /* grid view
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Desde el corazón de la comunidad FlutterES'),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'Flutter es el kit de herramientas de UI de Google para realizar hermosas aplicaciones, compiladas nativamente, para móvil, web y escritorio desde una única base de código.'),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'Los widgets de Flutter incorporan todas las diferencias críticas entre plaformas'),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'El hot reload de Flutter te ayuda a rápida y fácilmente experimentar, construir UIs, añadir funcionalidades, y corregir bugs más rápido.'),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'Utilice un completo conjunto de widgets totalmente personalizables para crear interfaces nativas en cuestión de minutos.'),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'Trae tu aplicación a la vida en cuestión de milisegundos con Hot Reload.'),
              color: Colors.teal[600],
            ),
          ],
        ), */
        /* table
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Table(children: [
            TableRow(children: [
              Text("item 1"),
              Text("item 2"),
              Text("item 3"),
            ]),
            TableRow(children: [
              Text("item 4"),
              Text("item 5"),
              Text("item 6"),
            ]),
          ]),
        ), */
      ),
    );
  }
}
