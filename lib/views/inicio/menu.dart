import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Menu extends StatelessWidget { //crear la clase login
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
      ),
      body: Center(
        child: Column(
          children: [
            
              CarouselSlider(
                items: [
                  Image.network('https://i.imgur.com/yTOZEAK.jpeg',width: 1500),
                  Image.network('https://i.imgur.com/TFV0wTK.png',width: 1500),
                  Image.network('https://i.imgur.com/khG9Axe.png',width: 1500,)
                ], 
                options: CarouselOptions(
                  height: 190,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 1.5,
                )
              ),
            
            SizedBox(height: 3),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  const Text('EVENTOS DESTACADOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.network('https://i.imgur.com/i4tTM7C.png',height: 200,),
                            SizedBox(height: 10),
                            const Text('Kudai Revive Tour',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white70,
                                ),
                                const Text('Centro de Convencion',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_sharp,
                                  color: Colors.white70,
                                ),
                                const Text('23 de Noviembre 2024',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3,),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 105, 31, 145)
                              ), 
                              child: const Text('VER EVENTO',style:TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.network('https://i.imgur.com/sc0Wg8F.png',height: 200,),
                            SizedBox(height: 10),
                            const Text('Ha Ash',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white70,                                  
                                ),
                                const Text('Coliseo General Ruminahui',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_sharp,
                                  color: Colors.white70,
                                ),
                                const Text('30 de Enero 2025',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 105, 31, 145)
                              ), 
                              child: const Text('VER EVENTO',style:TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),            
          ],
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
        currentIndex: 0,
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