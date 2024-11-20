import 'package:flutter/material.dart';

class CreateEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen del evento
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://via.placeholder.com/400x200', // Reemplaza con tu URL de imagen
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              // Título del evento
              TextField(
                decoration: InputDecoration(
                  labelText: 'Event Title',
                  labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                controller: TextEditingController(text: 'Music Concert'),
              ),
              SizedBox(height: 10),
              // Fecha y hora
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today_outlined),
                        labelText: 'Date',
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(text: '09 Nov, 2020'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.access_time_outlined),
                        labelText: 'Time',
                        border: OutlineInputBorder(),
                      ),
                      controller: TextEditingController(text: '09:00 AM'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Información adicional
              Text(
                'Additional Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'The performance may be by a single musician, sometimes such as an orchestra, choir or band.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),
              // Invitar personas
              Text(
                'Invite People',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://via.placeholder.com/50'),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://via.placeholder.com/50'),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://via.placeholder.com/50'),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    child: Icon(Icons.add, color: Colors.white),
                    backgroundColor: Colors.grey[400],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Botón de crear evento
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Create Event',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CreateEventScreen(),
  ));
}
