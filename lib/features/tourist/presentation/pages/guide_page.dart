import 'package:flutter/material.dart';

class TouristPage extends StatelessWidget {
  const TouristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Adventure'),
        backgroundColor: const Color(0xFF88A2AF), // Figma color match
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              _buildTextField(label: 'Adventure name'),
              _buildTextField(label: 'Photo (URL or Upload)'),
              _buildTextField(label: 'Location'),
              _buildTextField(label: 'Price', keyboardType: TextInputType.number),
              _buildTextField(label: 'Contacts'),
              _buildTextField(label: 'Description', maxLines: 3),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO: Call BLoC submit
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF50748C), // Button color
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          fillColor: const Color(0xFFF2F6F9),
          filled: true,
        ),
      ),
    );
  }
}
