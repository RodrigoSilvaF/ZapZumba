import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_intensivao/app/modules/login/login_repository.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  login() {
    Modular.get<LoginRepository>()
        .signInWithGoogle()
        .whenComplete(() => Modular.to.pushReplacementNamed('/home'));
  }

  logout() {
    Modular.get<LoginRepository>().signOut().whenComplete(
        () => Modular.to.pushReplacementNamed((Modular.initialRoute)));
  }
}
