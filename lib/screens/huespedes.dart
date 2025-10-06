import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Huespedes extends StatelessWidget {
  const Huespedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de Huéspedes')),
      drawer: const Sidebar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.people, size: 80, color: Colors.blueAccent),
            SizedBox(height: 20),
            Text('Aquí se listarán los huéspedes del hotel'),
          ],
        ),
      ),
    );
  }
}
