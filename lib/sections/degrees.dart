import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class DegreesPage extends StatelessWidget {
  const DegreesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Degrees'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to Degrees Page'),
      ),
    );
  }
}
