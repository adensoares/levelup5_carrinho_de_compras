import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/cart/cart_controller.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/cart/cart_page.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/home/home_controller.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/product_detail/product_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final cartController = CartController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CartPage(
                          cartController: cartController,
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  right: 5,
                  child: Container(
                    child: Observer(
                      builder: (_) {
                        return Text("${cartController.cartCounter}");
                      },
                    ),
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Geekommerce",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: homeController.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (2 / 3),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                cartController.productCounter = 1;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailPage(
                      productDetail: homeController.products[index],
                      cartController: cartController,
                    ),
                  ),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                    Text(
                      "${homeController.products[index].title}",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "R\$ ${homeController.products[index].price}",
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
