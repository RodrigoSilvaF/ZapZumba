import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'iniciarconv_controller.dart';

class IniciarconvPage extends StatefulWidget {
  final String title;
  const IniciarconvPage({Key key, this.title = "Iniciarconv"})
      : super(key: key);

  @override
  _IniciarconvPageState createState() => _IniciarconvPageState();
}

class _IniciarconvPageState
    extends ModularState<IniciarconvPage, IniciarconvController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contatos'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
