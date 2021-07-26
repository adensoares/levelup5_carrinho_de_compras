import 'package:levelup5_carrinho_de_compras/src/models/cart_product_model.dart';
import 'package:levelup5_carrinho_de_compras/src/models/product_model.dart';
import 'package:mobx/mobx.dart';
part 'cart_controller.g.dart';

class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase with Store {
  @observable
  int cartCounter = 0;

  @observable
  int productCounter = 1;

  @observable
  String cartProductsLength = "0";

  @observable
  ObservableList<CartProductModel> cartProducts =
      ObservableList.of(<CartProductModel>[]);

  @action
  void incrementCart() {
    cartCounter = cartCounter + productCounter;
  }

  @action
  void decrementCart() {
    if (cartCounter > 0) {
      cartCounter = cartCounter - 1;
    } else {
      cartCounter = 0;
    }
  }

  @action
  void addToCart(ProductModel product) {
    final index =
        cartProducts.indexWhere((element) => element.product == product);
    if (index >= 0) {
      cartProducts[index] = CartProductModel(
          product: product,
          quantity: cartProducts[index].quantity + productCounter);
    } else {
      final CartProductModel cartProduct =
          CartProductModel(product: product, quantity: productCounter);
      cartProducts.add(cartProduct);
    }
    updateSizeList();
    incrementCart();
  }

  @action
  removeFromCart(ProductModel product) {
    final index =
        cartProducts.indexWhere((element) => element.product == product);
    if (cartProducts[index].quantity <= 1) {
      cartProducts.removeAt(index);
    } else {
      cartProducts[index] = CartProductModel(
          product: product, quantity: cartProducts[index].quantity - 1);
    }
    updateSizeList();
    decrementCart();
  }

  @action
  void incrementProduct() {
    productCounter++;
  }

  @action
  void decrementProduct() {
    if (productCounter > 1) {
      productCounter--;
    }
  }

  @action
  void resetProductCounter() {
    productCounter = 1;
  }

  updateSizeList() {
    int sizeList = 0;
    cartProducts.forEach((element) => sizeList += element.quantity);
    cartProductsLength = sizeList.toString();
  }
}
