import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Flutter',
      home: Scaffold(
        body: Center(
          child: LoginWidget(),
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<LoginWidget> createState() {
    return new LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  final formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0),
          ),
          Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    emailField(),
                    passwordField(),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.0),
                    ),
                    submitButton(),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 30.0,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration:
          InputDecoration(hintText: 'cognos@gmail.com', labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return !value.contains('@') ? 'email invalido' : null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(hintText: '*****', labelText: 'Password'),
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton.icon(
      color: Colors.cyan[600],
      textColor: Colors.white,
      label: Text('Enviar'),
      icon: Icon(Icons.save),
      onPressed: () {
        final bool v = formKey.currentState.validate();
        if (v) {
          formKey.currentState.save();
        }
      },
    );
  }
}
