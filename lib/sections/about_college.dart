import 'package:flutter/material.dart';

class AboutCollegePage extends StatelessWidget {
  const AboutCollegePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About College'),
      ),
      body: const Center(
        child: Text('Welcome to About College Page'),
      ),
    );
  }
}
