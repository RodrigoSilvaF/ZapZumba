import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_intensivao/app/modules/home/conversas/repositories/conversas_repository.dart';
import 'conversas_controller.dart';

class ConversasPage extends StatefulWidget {
  final String title;
  const ConversasPage({Key key, this.title = "Conversas"}) : super(key: key);

  @override
  _ConversasPageState createState() => _ConversasPageState();
}

class _ConversasPageState
    extends ModularState<ConversasPage, ConversasController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Mensagens'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
