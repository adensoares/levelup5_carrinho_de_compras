import 'package:flutter/material.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/home/home_page.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
