import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF8B4513),
      title: const Text(
        "HOTEL ANDINO",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
      ),
      centerTitle: true,
    );
  }
}
