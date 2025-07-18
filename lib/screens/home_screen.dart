import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Welcome to JuruStay Home Screen!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
