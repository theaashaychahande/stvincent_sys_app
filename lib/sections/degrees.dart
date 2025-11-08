import 'package:flutter/material.dart';

class DegreesPage extends StatelessWidget {
  const DegreesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Degrees'),
      ),
      body: const Center(
        child: Text('Welcome to Degrees Page'),
      ),
    );
  }
}
