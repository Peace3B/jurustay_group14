
import 'package:flutter/material.dart';
import '../widgets/profile_visits_chart.dart'; // Chart widget
import '../widgets/stat_card.dart'; // For stat cards like total earnings, tours, etc.

class CommissionerDashboardPage extends StatelessWidget {
  const CommissionerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- STAT CARDS ---
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatCard(title: 'Tours', value: '12'),
                StatCard(title: 'Earnings', value: 'KSh 4,500'),
                StatCard(title: 'Reviews', value: '4.8 ⭐'),
              ],
            ),

            const SizedBox(height: 30),

            // --- CHART SECTION ---
            const Text(
              'Profile Visits (This Week)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 200, child: ProfileVisitsChart()),

            const SizedBox(height: 40),

            // --- NAV BUTTONS ---
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/guides');
              },
              child: const Text('Submit New Tour'),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('View Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
