import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFD2B48C),
      selectedItemColor: Colors.brown[800],
      unselectedItemColor: Colors.grey[700],
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Habitación'),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Producto'),
        BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings), label: 'Administración'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}
