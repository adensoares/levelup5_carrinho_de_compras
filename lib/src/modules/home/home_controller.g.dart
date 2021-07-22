// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$shoppingCartCounterAtom =
      Atom(name: 'HomeControllerBase.shoppingCartCounter');

  @override
  int get shoppingCartCounter {
    _$shoppingCartCounterAtom.reportRead();
    return super.shoppingCartCounter;
  }

  @override
  set shoppingCartCounter(int value) {
    _$shoppingCartCounterAtom.reportWrite(value, super.shoppingCartCounter, () {
      super.shoppingCartCounter = value;
    });
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shoppingCartCounter: ${shoppingCartCounter}
    ''';
  }
}
