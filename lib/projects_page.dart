import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Projects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              ProjectCard(
                imagePath: 'assets/picsum.jpg',
                title: 'E-commerce Website',
                description: 'Developed an e-commerce platform with a user-friendly interface, secure payments, customizable listings, and real-time inventory tracking.',
                buttonText: 'View Project',
              ),

              SizedBox(height: 16),

              ProjectCard(
                imagePath: 'assets/picsum.jpg',
                title: 'Flutter Portfolio App',
                description: 'Built a cross-platform portfolio app using Flutter to showcase skills, projects, and contact information.',
                buttonText: 'View Project',
              ),

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
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;

  const ProjectCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 150, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}