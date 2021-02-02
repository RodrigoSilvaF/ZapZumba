import 'iniciarconv_controller.dart';
import 'package:dio/dio.dart';
import 'repositories/iniciarconv_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'iniciarconv_page.dart';

class IniciarconvModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $IniciarconvController,
        $IniciarconvRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => IniciarconvPage()),
      ];

  static Inject get to => Inject<IniciarconvModule>.of();
}
