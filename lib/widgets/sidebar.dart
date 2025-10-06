import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.hotel, size: 60, color: Colors.white),
                SizedBox(height: 10),
                Text('Hotel App', style: TextStyle(color: Colors.white, fontSize: 24)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_online),
            title: const Text('Reservas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/reservas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Huéspedes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/huespedes');
            },
          ),
          ListTile(
            leading: const Icon(Icons.meeting_room),
            title: const Text('Habitaciones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/habitaciones');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
