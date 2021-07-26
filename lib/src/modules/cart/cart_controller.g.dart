// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartControllerBase, Store {
  final _$cartCounterAtom = Atom(name: '_CartControllerBase.cartCounter');

  @override
  int get cartCounter {
    _$cartCounterAtom.reportRead();
    return super.cartCounter;
  }

  @override
  set cartCounter(int value) {
    _$cartCounterAtom.reportWrite(value, super.cartCounter, () {
      super.cartCounter = value;
    });
  }

  final _$productCounterAtom = Atom(name: '_CartControllerBase.productCounter');

  @override
  int get productCounter {
    _$productCounterAtom.reportRead();
    return super.productCounter;
  }

  @override
  set productCounter(int value) {
    _$productCounterAtom.reportWrite(value, super.productCounter, () {
      super.productCounter = value;
    });
  }

  final _$cartProductsLengthAtom =
      Atom(name: '_CartControllerBase.cartProductsLength');

  @override
  String get cartProductsLength {
    _$cartProductsLengthAtom.reportRead();
    return super.cartProductsLength;
  }

  @override
  set cartProductsLength(String value) {
    _$cartProductsLengthAtom.reportWrite(value, super.cartProductsLength, () {
      super.cartProductsLength = value;
    });
  }

  final _$cartProductsAtom = Atom(name: '_CartControllerBase.cartProducts');

  @override
  ObservableList<CartProductModel> get cartProducts {
    _$cartProductsAtom.reportRead();
    return super.cartProducts;
  }

  @override
  set cartProducts(ObservableList<CartProductModel> value) {
    _$cartProductsAtom.reportWrite(value, super.cartProducts, () {
      super.cartProducts = value;
    });
  }

  final _$_CartControllerBaseActionController =
      ActionController(name: '_CartControllerBase');

  @override
  void incrementCart() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.incrementCart');
    try {
      return super.incrementCart();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementCart() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.decrementCart');
    try {
      return super.decrementCart();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToCart(ProductModel product) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.addToCart');
    try {
      return super.addToCart(product);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFromCart(ProductModel product) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.removeFromCart');
    try {
      return super.removeFromCart(product);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementProduct() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.incrementProduct');
    try {
      return super.incrementProduct();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementProduct() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.decrementProduct');
    try {
      return super.decrementProduct();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetProductCounter() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.resetProductCounter');
    try {
      return super.resetProductCounter();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartCounter: ${cartCounter},
productCounter: ${productCounter},
cartProductsLength: ${cartProductsLength},
cartProducts: ${cartProducts}
    ''';
  }
}
