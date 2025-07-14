import 'package:flutter/material.dart';

class GuidesPage extends StatefulWidget {
  const GuidesPage({super.key});

  @override
  State<GuidesPage> createState() => _GuidesPageState();
}

class _GuidesPageState extends State<GuidesPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '', photo = '', location = '', price = '', contact = '', description = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Tour submitted")),
      );
      Navigator.pop(context);
    }
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3C9D1), // your blue
      appBar: AppBar(title: const Text("Submit Tour")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(decoration: _inputDecoration("Adventure name")),
              const SizedBox(height: 12),
              TextFormField(decoration: _inputDecoration("Photo")),
              const SizedBox(height: 12),
              TextFormField(decoration: _inputDecoration("Location")),
              const SizedBox(height: 12),
              TextFormField(decoration: _inputDecoration("Price")),
              const SizedBox(height: 12),
              TextFormField(decoration: _inputDecoration("Contacts")),
              const SizedBox(height: 12),
              TextFormField(
                decoration: _inputDecoration("Description"),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
