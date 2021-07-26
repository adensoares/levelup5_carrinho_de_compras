import 'package:levelup5_carrinho_de_compras/src/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  List<ProductModel> products = [
    ProductModel(
      title: "Berserk",
      price: 99.99,
    ),
    ProductModel(
      title: "Hunter x Hunter",
      price: 99.99,
    ),
    ProductModel(
      title: "Vagabond",
      price: 99.99,
    ),
  ];
}
