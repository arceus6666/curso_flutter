import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import './HomePage.dart';

class HomePageState extends State<HomePage> {
  List data;
  final formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  // future es para funciones q no se conoce cuanto tardará
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.3.126:3000/api-cognos/alumnos"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      data = json.decode(response.body);
    });
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lista de Alumnos"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Usuario ${data[index]["id"]}"),
                  subtitle: Text(
                    data[index]["nombres"] + " " + data[index]["apellidos"],
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Icon(Icons.edit),
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Form(
                                        key: formKey,
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Column(
                                            children: <Widget>[
                                              idField(),
                                              passwordField(),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 30.0),
                                              ),
                                              submitButton(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      FlatButton(
                        child: Icon(Icons.delete),
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Form(
                                        key: formKey,
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Row(
                                            children: <Widget>[
                                              acceptButton(),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: 30.0,
                                                ),
                                              ),
                                              cancelButton(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  child: Column(
                    children: <Widget>[
                      Form(
                        key: formKey,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              idField(),
                              passwordField(),
                              Container(
                                margin: EdgeInsets.only(bottom: 30.0),
                              ),
                              submitButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        tooltip: 'Mostrar el valor',
        child: Icon(Icons.text_fields),
      ),
    );
  }

  Widget idField() {
    return TextFormField(
      decoration:
          InputDecoration(hintText: '0', labelText: 'ID'),
      keyboardType: TextInputType.number,
      validator: (value) {
        return !value.contains('/[a-zA-z]/') ? 'id invalido' : null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget nameField() {
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

  Widget acceptButton() {
    return RaisedButton.icon(
      color: Colors.cyan[600],
      textColor: Colors.white,
      label: Text('Si'),
      icon: Icon(Icons.check),
      onPressed: () {
        final bool v = formKey.currentState.validate();
        if (v) {
          formKey.currentState.save();
        }
      },
    );
  }

  Widget cancelButton() {
    return RaisedButton.icon(
      color: Colors.cyan[600],
      textColor: Colors.white,
      label: Text('No'),
      icon: Icon(Icons.cancel),
      onPressed: () {
        final bool v = formKey.currentState.validate();
        if (v) {
          formKey.currentState.save();
        }
      },
    );
  }
}
