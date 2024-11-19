import 'package:ces_show_/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CES SHOW',
      initialRoute:'/menu', //la ruta con la que inicia
      routes: {  //rutas
        '/menu': (context) =>Menu(),
      },
    );
  }
}