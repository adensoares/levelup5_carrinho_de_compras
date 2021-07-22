import 'package:levelup5_carrinho_de_compras/src/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  int shoppingCartCounter = 0;

  @action
  void increment() {
    shoppingCartCounter++;
  }

  List<Product> products = [
    Product(
      title: "Berserk",
      price: 99.99,
    ),
    Product(
      title: "Berserk",
      price: 99.99,
    ),
    Product(
      title: "Berserk",
      price: 99.99,
    ),
    Product(
      title: "Berserk",
      price: 99.99,
    ),
    Product(
      title: "Berserk",
      price: 99.99,
    ),
  ];
}
