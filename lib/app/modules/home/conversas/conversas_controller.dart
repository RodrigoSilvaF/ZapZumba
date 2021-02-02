import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_intensivao/app/modules/home/conversas/repositories/conversas_repository.dart';

part 'conversas_controller.g.dart';

@Injectable()
class ConversasController = _ConversasControllerBase with _$ConversasController;

abstract class _ConversasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
