import 'package:flutter/material.dart';
import 'popup.dart';

class TermsAndAgreementsScreen extends StatefulWidget {
  const TermsAndAgreementsScreen({Key? key}) : super(key: key);

  @override
  State<TermsAndAgreementsScreen> createState() =>
      _TermsAndAgreementsScreenState();
}

class _TermsAndAgreementsScreenState extends State<TermsAndAgreementsScreen> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'TERMS AND AGREEMENTS',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '''1. Introduction\nWelcome to our app. By using this platform, you agree to follow the rules outlined below.\n\n2. Use of Service\nYou may use this app to explore and manage adventure listings. Misuse or fraudulent use is not allowed.\n\n3. User Accounts\nYou are responsible for the safety of your account. Don't share your login details with others.\n\n4. Agent & Commissioner Roles\n. Agents can add adventure places.\n. Commissioners manage and approve listings.\nRespect others' roles and only use features assigned to your role.\n\n5. Listings & Content\nOnly share accurate, real, and respectful content. We reserve the right to remove inappropriate or fake listings.\n\n6. Contact & Communication\nUsers may contact agents through the app. Use polite, legal communication at all times.\n\n7. Changes\nWe may update these terms occasionally. You'll be notified in-app.\n\n8. Termination\nWe can suspend or remove accounts that break the rules.\n\n9. Contact Us\nQuestions? Reach out to us via the app's contact section.''',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isAgreed,
                  onChanged: (value) {
                    setState(() {
                      isAgreed = value ?? false;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    'I agree to the Terms of service',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isAgreed
                    ? () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => const SignUpSuccessPopup(),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 80, 143),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
