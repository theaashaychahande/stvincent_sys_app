import 'package:flutter/material.dart';
import '../widgets/college_logo.dart';

class BranchesDepartmentsPage extends StatelessWidget {
  const BranchesDepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches / Departments'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CollegeLogo(size: 32),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to Branches / Departments Page'),
      ),
    );
  }
}
