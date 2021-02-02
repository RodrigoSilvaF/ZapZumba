import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'conversas/conversas_module.dart';
import 'home_controller.dart';
import 'iniciarconv/iniciarconv_module.dart';
import 'perfil/perfil_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  final controller2 = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [
          RouterOutlet(module: IniciarconvModule()),
          RouterOutlet(module: ConversasModule()),
          RouterOutlet(module: PerfilModule()),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageController,
        builder: (context, child) {
          return BottomNavigationBar(
            selectedItemColor: Colors.white,
            backgroundColor: Colors.blueGrey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.contacts), label: 'Contatos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Mensagens'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Perfil'),
            ],
            onTap: (value) {
              controller.pageController.jumpToPage(value);
            },
            currentIndex: controller.pageController?.page?.round() ?? 0,
          );
        },
      ),
    );
  }
}
