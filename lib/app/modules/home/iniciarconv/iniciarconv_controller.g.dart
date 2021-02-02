// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iniciarconv_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $IniciarconvController = BindInject(
  (i) => IniciarconvController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IniciarconvController on _IniciarconvControllerBase, Store {
  final _$valueAtom = Atom(name: '_IniciarconvControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_IniciarconvControllerBaseActionController =
      ActionController(name: '_IniciarconvControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_IniciarconvControllerBaseActionController
        .startAction(name: '_IniciarconvControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_IniciarconvControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
