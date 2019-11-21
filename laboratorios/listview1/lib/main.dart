import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = 'Lista Básica';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mapa'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefono'),
            ),
            ListTile(
              leading: Icon(Icons.reply),
              title: Text('Volver'),
            ),
            ListTile(
              leading: Icon(Icons.save_alt),
              title: Text('Descargar'),
            ),
            ListTile(
              title: Text('Buscar'),
              leading: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
