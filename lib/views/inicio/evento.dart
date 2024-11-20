import 'package:flutter/material.dart';

class Evento extends StatelessWidget { 
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
      body: Column(
        children: [
          Image.network('https://i.imgur.com/aUzbxa4.jpg'),
          SizedBox(height: 15),
          Container(
            color: Colors.black26,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('LOCALIDADES', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                      ),
                    ),
                    SizedBox(width: 200),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('Comprar Ahorra',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 105, 31, 145)
                        ),
                      ),
                      
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text('La tabla de localidades se detalla en la sinopsis.'),
                SizedBox(height: 10,),
                Text('Aprovecha el 15 % de descuento en la localidad de: OUTPUT BOX, BUTACA, FAN, HAASH BOX, VIP BLOQUE C, VIP BLOQUE D, VIP BLOQUE E, VIP BLOQUE F y VIP BLOQUE GEl Descuento se aplicará al seleccionar o agregar asientos'),
                SizedBox(height: 10),
                Text('Una vez realizada la compra no se podrá aplicar descuento alguno. Para acceder al descuento de tercera edad o discapacidad deben acercarse al punto de venta a realizar la compra, deberá llevar copia de cédula, este descuento será personal e intrasferible'),
                SizedBox(height: 10),
                Text('EVENTO EN PREVENTA'),
                SizedBox(height: 15)
              ],
            ),
          )

        ],

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