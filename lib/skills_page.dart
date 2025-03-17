import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Programming Languages', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('- Python (AI & ML development)', style: TextStyle(fontSize: 18)),
            Text('- Java (OOP & Android development)', style: TextStyle(fontSize: 18)),
            Text('- C (Efficient algorithms & data structures)', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            Text('AI & Machine Learning', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('- Neural Networks & Deep Learning', style: TextStyle(fontSize: 18)),
            Text('- Computer Vision & AI Applications', style: TextStyle(fontSize: 18)),
            Text('- Natural Language Processing (NLP)', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            Text('Software Development', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('- Flutter (Cross-platform app development)', style: TextStyle(fontSize: 18)),
            Text('- Web Development (HTML, CSS, JS)', style: TextStyle(fontSize: 18)),
            Text('- API Integration & Backend Services', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            Text('Emerging Technologies', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('- Augmented & Virtual Reality (AR/VR)', style: TextStyle(fontSize: 18)),
            Text('- Robotics & Automation', style: TextStyle(fontSize: 18)),
            Text('- Blockchain & Cryptography Basics', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}