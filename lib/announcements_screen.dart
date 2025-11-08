import 'package:flutter/material.dart';
import 'widgets/college_logo.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Announcements Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
