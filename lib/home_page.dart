import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/feixiao.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'Shambhavi Singh',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("IGDTUW"),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Bio',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hello, Im Shambhavi Singh, a first-year B.Tech CSE student at IGDTUW with a passion for coding and innovation. I thrive on exploring emerging technologies, pushing boundaries, and constantly expanding my skill set. I believe in blazing my own path, tackling challenges head-on, and creating impactful solutions that drive progress. Whether its diving into AI, building efficient algorithms, or experimenting with new tech, Im always eager to learn, adapt, and innovate.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              child: Text('Projects'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/skills');
              },
              child: Text('Skills'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}