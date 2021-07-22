import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
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
                      return Text("${controller.shoppingCartCounter}");
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
        itemCount: controller.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (2 / 3),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: controller.increment,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(),
                  Text(
                    "${controller.products[index].title}",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "R\$ ${controller.products[index].price}",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
