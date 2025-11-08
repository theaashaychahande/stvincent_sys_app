import 'package:flutter/material.dart';

class BranchesDepartmentsPage extends StatelessWidget {
  const BranchesDepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches / Departments'),
      ),
      body: const Center(
        child: Text('Welcome to Branches / Departments Page'),
      ),
    );
  }
}
