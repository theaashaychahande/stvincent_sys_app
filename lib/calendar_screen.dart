import 'package:flutter/material.dart';
import 'widgets/college_logo.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Calendar Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
