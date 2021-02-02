import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'iniciarconv_controller.g.dart';

@Injectable()
class IniciarconvController = _IniciarconvControllerBase
    with _$IniciarconvController;

abstract class _IniciarconvControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
