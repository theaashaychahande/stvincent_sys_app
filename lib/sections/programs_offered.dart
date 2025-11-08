import 'package:flutter/material.dart';

class ProgramsOfferedPage extends StatelessWidget {
  const ProgramsOfferedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs Offered'),
      ),
      body: const Center(
        child: Text('Welcome to Programs Offered Page'),
      ),
    );
  }
}
