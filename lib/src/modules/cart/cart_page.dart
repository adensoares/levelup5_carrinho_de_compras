import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/cart/cart_controller.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key, required this.cartController}) : super(key: key);

  final CartController cartController;
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return ListView.builder(
          itemBuilder: (_, index) => Card(
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        width: 100.0,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget
                              .cartController.cartProducts[index].product.title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: Row(
                        children: [
                          widget.cartController.cartProducts[index].quantity > 1
                              ? IconButton(
                                  onPressed: () {
                                    widget.cartController.removeFromCart(widget
                                        .cartController
                                        .cartProducts[index]
                                        .product);
                                  },
                                  icon: Icon(Icons.remove),
                                )
                              : IconButton(
                                  onPressed: () {
                                    widget.cartController.removeFromCart(widget
                                        .cartController
                                        .cartProducts[index]
                                        .product);
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                          Text(widget.cartController.cartProducts[index]
                                      .quantity >
                                  1
                              ? "${widget.cartController.cartProducts[index].quantity}"
                              : "1"),
                          IconButton(
                            onPressed: () {
                              widget.cartController.addToCart(widget
                                  .cartController.cartProducts[index].product);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          itemCount: widget.cartController.cartProducts.length,
        );
      }),
    );
  }
}
