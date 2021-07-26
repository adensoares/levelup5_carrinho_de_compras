import 'package:levelup5_carrinho_de_compras/src/models/product_model.dart';

class CartProductModel {
  final ProductModel product;
  int quantity;

  CartProductModel({
    required this.product,
    required this.quantity,
  });
}
