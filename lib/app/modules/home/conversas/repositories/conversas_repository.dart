import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

part 'conversas_repository.g.dart';

@Injectable()
class ConversasRepository extends Disposable {
  List<StreamSubscription<DocumentSnapshot>> inscricoes = [];

  //dispose will be called automatically
  @override
  void dispose() {}
}
