import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_intensivao/app/modules/login/login_controller.dart';
import 'package:projeto_intensivao/app/modules/login/login_module.dart';
import 'package:projeto_intensivao/app/modules/login/login_repository.dart';
import 'perfil_controller.dart';
import 'package:image_picker/image_picker.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key key, this.title = "Perfil"}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends ModularState<PerfilPage, PerfilController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Perfil'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (BuildContext context) {
                return ClipOval(
                  child: Image.network(
                    Modular.get<LoginRepository>().photo,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: Colors.black),
              ),
              onPressed: LoginController().logout,
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
