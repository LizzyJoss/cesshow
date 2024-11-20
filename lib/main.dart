import 'package:ces_show_/views/concierto/concierto.dart';
import 'package:ces_show_/views/inicio/evento.dart';
import 'package:ces_show_/views/inicio/menu.dart';
import 'package:ces_show_/views/teatro/teatro.dart';
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
        '/evento' : (context) =>Evento(),
        '/teatro':(context) =>Teatro(),
        '/concierto':(context) =>Concierto(),

      },
    );
  }
}