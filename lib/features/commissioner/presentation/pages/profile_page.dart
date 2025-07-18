import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _introController = TextEditingController(text: "Hello! I'm John, with over 10 years of experience...");

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _infoCard(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _editableIntroCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: _introController,
        maxLines: 4,
        decoration: const InputDecoration.collapsed(hintText: "Tell us about yourself"),
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3C9D1),
      appBar: AppBar(title: const Text("Commissioner Profile")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle("About Me"),
            _editableIntroCard(),

            _sectionTitle("Saved Places"),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 2,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _infoCard("Luxury", "Beautiful beach"),
                _infoCard("Cultural", "Historical landmark"),
              ],
            ),

            _sectionTitle("Past Bookings"),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 2,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _infoCard("Adventure", "Mountain Hiking – Completed"),
                _infoCard("Leisure", "Tropical Cruise – Completed"),
              ],
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _introController.text = "";
                      });
                    },
                    style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text("Cancel"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      final intro = _introController.text;
                      print("Saved intro: $intro"); // You can later send to Firestore
                    },
                    child: const Text("Save Changes"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
