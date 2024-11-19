import 'package:flutter/material.dart';

class Concierto extends StatelessWidget { //crear la clase login
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('CES SHOW',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.book_online_outlined,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 105, 31, 145),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('CONCIERTO',
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 105, 31, 145),
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'MENU',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'TEATRO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_rounded),
            label: 'CONCIERTO',
          ),
        ],
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.popUntil(context, ModalRoute.withName('/menu')); 
          } else if (index == 1) {
            Navigator.pushNamed(context, '/teatro'); 
          } else if (index == 2) {
            Navigator.pushNamed(context, '/concierto'); 
          }
        },
      ),     
    );
  }
}