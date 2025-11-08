import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class AboutCollegePage extends StatelessWidget {
  const AboutCollegePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About College'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to About College Page'),
      ),
    );
  }
}
