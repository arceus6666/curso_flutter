import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.menu)),
                Tab(icon: Icon(Icons.android)),
              ],
            ),
            title: Text('Pestañas'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              ListView(
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
                ],
              ),
              Icon(Icons.android),
            ],
          ),
        ),
      ),
    );
  }
}
