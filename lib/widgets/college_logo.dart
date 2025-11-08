import 'package:flutter/material.dart';

class CollegeLogo extends StatelessWidget {
  final double size;

  const CollegeLogo({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/logosvpcet.png',
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
