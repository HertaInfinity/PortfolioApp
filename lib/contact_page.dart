import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ContactForm(),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _submitForm() {
    // This function remains but does not store/display the submitted data.
    _nameController.clear();
    _emailController.clear();
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Get in Touch!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Have a project, question, or just want to connect? Send me a message!',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),

        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: 'Name',
            hintText: 'Enter your name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),

        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email address',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 16),

        TextFormField(
          controller: _messageController,
          decoration: InputDecoration(
            labelText: 'Message',
            hintText: 'Enter your message',
            border: OutlineInputBorder(),
          ),
          maxLines: 5,
        ),
        SizedBox(height: 20),

        Center(
          child: ElevatedButton(
            onPressed: _submitForm,
            child: Text('Submit'),
          ),
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
    );
  }
}