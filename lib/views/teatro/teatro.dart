import 'package:flutter/material.dart';
import 'package:cached_network_image/cachedNetworkImage.dart'; // Import necesario para CachedNetworkImage

class Teatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'CES SHOW',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.book_online_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 105, 31, 145),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Historias
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _storyWidget(
                    'Add new',
                    'https://via.placeholder.com/100',
                  ),
                  _storyWidget(
                    'Krista Artis',
                    'https://via.placeholder.com/100',
                  ),
                  _storyWidget(
                    'Imogen',
                    'https://via.placeholder.com/100',
                  ),
                  _storyWidget(
                    'Anne Adams',
                    'https://via.placeholder.com/100',
                  ),
                ],
              ),
            ),
            // Input de publicación
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write something here...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.image, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.blue),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            // Publicaciones
            _postWidget(
              'Angelina Hall',
              'I have just spent 3 amazing days in my home town!',
              'https://via.placeholder.com/200',
              1500,
              841,
              127,
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
        currentIndex: 1,
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

  Widget _storyWidget(String name, String imageUrl) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: 30,
            backgroundImage: imageProvider,
          ),
          placeholder: (context, url) => CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, color: Colors.white),
          ),
          errorWidget: (context, url, error) => CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            child: Icon(Icons.error, color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _postWidget(String name, String content, String imageUrl, int likes,
      int comments, int shares) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Text(content),
            SizedBox(height: 10),
            CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) =>
                  Container(height: 200, color: Colors.grey[300]),
              errorWidget: (context, url, error) => Container(
                height: 200,
                color: Colors.red,
                child: Center(child: Icon(Icons.error, color: Colors.white)),
              ),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _iconText(Icons.thumb_up_alt_outlined, likes.toString()),
                _iconText(Icons.comment_outlined, comments.toString()),
                _iconText(Icons.share_outlined, shares.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey),
        SizedBox(width: 5),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
