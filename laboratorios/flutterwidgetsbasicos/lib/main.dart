import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos a Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos a Flutter'),
        ),
        /* basico
        body: Center(
          child: Text('Hola Mundo!'),
        ),
        */
        /* Container1
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        ),
        */
        /* Container2
        body: Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue[600],
          alignment: Alignment.center,
          child: Text('Hola Mundo',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white)),
          transform: Matrix4.rotationZ(0.1),
        ),
        */
        /* Row1
        body: Row(
          children: <Widget>[
            Expanded(
              child:
                  Text('Texto alineado izquierda', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Texto al medio', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
          ],
        ), */
        /* row2
        body: Row(
          children: <Widget>[
            const FlutterLogo(),
            const Expanded(
              child: Text(
                  'Flutter\'s Desde el corazón de la comunidad FlutterES, nace un nuevo concepto de academia online para ayudar a formar profesionales en nuestro SDK favorito.'),
            ),
            const Icon(Icons.sentiment_very_satisfied),
            const Expanded(
                child: Text(
                    'Trae tu aplicación a la vida en cuestión de milisegundos con Hot Reload. Utilice un completo conjunto de widgets totalmente personalizables para crear interfaces nativas en cuestión de minutos.'))
          ],
        ), */
        /* column1
        body: Column(
          children: <Widget>[
            Text(
                'Trae tu aplicación a la vida en cuestión de milisegundos con Hot Reload.'),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
            Text(
                'Monta rápidamente funcionalidades con el foco en la experiencia de usuario nativa.'),
          ],
        ), */
        /* column2
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Desarrollo rápido'),
            Text('Estado previo se combina con nuevo código'),
            Text(
                'Cambio del código reciente se incluye pero el estado de la app se excluye'),
            Text('Cambio reciente de la UI es excluido'),
            Text(
                'La funcionalidad hot reload de Flutter te ayuda a rápida y fácilmente experimentar'),
            Text(
                'Ejecuta la app desde un editor Flutter soportado o desde una ventana de terminal.')
          ],
        ), */
        /* network image
        body: const Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ), */
        /* text
        body: const Text.rich(
          TextSpan(
            text: 'Hola', // default text style
            children: <TextSpan>[
              TextSpan(
                  text: ' Saludos ',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ), */
        /* icons
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Texto',
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        ), */
        /* Raised Button
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const RaisedButton(
                onPressed: null,
                child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                child: const Text('Enabled Button',
                    style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Gradient Button',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ), */
        /* scaffold
        body: Center(child: Text('Boton Flotante')),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, */
      ),
    );
  }
}
