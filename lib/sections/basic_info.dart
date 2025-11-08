import 'package:flutter/material.dart';

class BasicInfoPage extends StatelessWidget {
  const BasicInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Information'),
      ),
      body: const Center(
        child: Text('Welcome to Basic Information Page'),
      ),
    );
  }
}
