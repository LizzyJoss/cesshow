import 'package:flutter/material.dart';

class Menu extends StatelessWidget { //crear la clase login
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.deepPurple
      ),
      body: Center(
        child: Text('Bienvenido',
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
  
}