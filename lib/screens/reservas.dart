import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Reservas extends StatelessWidget {
  const Reservas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de Reservas')),
      drawer: const Sidebar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.book_online, size: 80, color: Colors.blueAccent),
            SizedBox(height: 20),
            Text('Aquí se mostrarán las reservas registradas'),
          ],
        ),
      ),
    );
  }
}
