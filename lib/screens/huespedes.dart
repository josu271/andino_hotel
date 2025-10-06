import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Huespedes extends StatelessWidget {
  const Huespedes({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista simulada de huéspedes (puedes reemplazarla por datos reales de Firebase, etc.)
    final List<Map<String, dynamic>> huespedes = [
      {'nombre': 'Carlos Pérez', 'habitacion': 101},
      {'nombre': 'María López', 'habitacion': 202},
      {'nombre': 'Juan Torres', 'habitacion': 303},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Huéspedes'),
      ),
      drawer: const Sidebar(),
      body: huespedes.isEmpty
          ? const Center(
              child: Text(
                'No hay huéspedes registrados.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: huespedes.length,
              itemBuilder: (context, index) {
                final huesped = huespedes[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 3,
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.blueAccent),
                    title: Text(huesped['nombre']),
                    subtitle: Text('Habitación: ${huesped['habitacion']}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {
                        // Aquí podrías agregar la lógica para eliminar huéspedes
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí podrías navegar a un formulario para agregar un huésped
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
