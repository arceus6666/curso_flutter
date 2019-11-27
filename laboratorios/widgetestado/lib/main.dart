import 'package:flutter/material.dart';

import './widgets/PlayerWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StatefulWidget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('StatefulWidget'),
            ),
            body: Center(child: PlayerWidget())));
  }
}
