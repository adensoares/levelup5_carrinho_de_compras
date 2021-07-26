import 'package:flutter/material.dart';
import 'package:levelup5_carrinho_de_compras/src/modules/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => HomePage(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Page"),
      ),
    );
  }
}
