import 'conversas_controller.dart';
import 'package:dio/dio.dart';
import 'repositories/conversas_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'conversas_page.dart';

class ConversasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ConversasController,
        $ConversasRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ConversasPage()),
      ];

  static Inject get to => Inject<ConversasModule>.of();
}
