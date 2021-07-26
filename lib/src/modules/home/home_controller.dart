import 'package:levelup5_carrinho_de_compras/src/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  List<ProductModel> products = [
    ProductModel(
      title: "Berserk #1",
      image: "https://img.assinaja.com/assets/tZ/004/img/49230_520x520.jpg",
      price: 24.99,
    ),
    ProductModel(
      title: "Hunter x Hunter #1",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/51bkj-PMS6L._SX343_BO1,204,203,200_.jpg",
      price: 19.99,
    ),
    ProductModel(
      title: "Vagabond #1",
      image: "https://img.assinaja.com/assets/tZ/004/img/282685_520x520.jpg",
      price: 24.99,
    ),
  ];
}
