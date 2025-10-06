import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Habitaciones extends StatelessWidget {
  const Habitaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de Habitaciones')),
      drawer: const Sidebar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.meeting_room, size: 80, color: Colors.blueAccent),
            SizedBox(height: 20),
            Text('Aquí se administrarán las habitaciones disponibles'),
          ],
        ),
      ),
    );
  }
}
