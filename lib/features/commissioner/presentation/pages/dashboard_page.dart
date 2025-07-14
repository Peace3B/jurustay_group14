import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // ✅

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Commissioner Dashboard")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.push('/submit-tour'),
            child: const Text("Submit a Tour"),
          ),
          ElevatedButton(
            onPressed: () => context.push('/profile'),
            child: const Text("View Profile"),
          ),
        ],
      ),
    );
  }
}
