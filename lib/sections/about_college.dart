import 'package:flutter/material.dart';

class AboutCollegePage extends StatelessWidget {
  const AboutCollegePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logosvpcet.png',
              height: 30,
              width: 30,
              errorBuilder: (context, error, stackTrace) {
                // Placeholder if image is not found
                return Container(
                  width: 30,
                  height: 30,
                  color: Colors.grey,
                  child: const Icon(Icons.image, size: 20),
                );
              },
            ),
            const SizedBox(width: 10),
            const Text('About College'),
          ],
        ),
      ),
      body: const Center(
        child: Text('Welcome to About College Page'),
      ),
    );
  }
}
