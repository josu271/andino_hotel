import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Habitaciones extends StatelessWidget {
  const Habitaciones({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista simulada de habitaciones (puedes reemplazarla con datos reales)
    final List<Map<String, dynamic>> habitaciones = [
      {'numero': 101, 'tipo': 'Simple', 'estado': 'Disponible'},
      {'numero': 102, 'tipo': 'Doble', 'estado': 'Ocupada'},
      {'numero': 103, 'tipo': 'Suite', 'estado': 'Mantenimiento'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Habitaciones'),
      ),
      drawer: const Sidebar(),
      body: habitaciones.isEmpty
          ? const Center(
              child: Text(
                'No hay habitaciones registradas.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: habitaciones.length,
              itemBuilder: (context, index) {
                final habitacion = habitaciones[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 3,
                  child: ListTile(
                    leading: const Icon(Icons.meeting_room,
                        color: Colors.blueAccent),
                    title: Text('Habitación ${habitacion['numero']}'),
                    subtitle: Text(
                      'Tipo: ${habitacion['tipo']}\nEstado: ${habitacion['estado']}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.edit, color: Colors.orangeAccent),
                      onPressed: () {
                        // Aquí podrías navegar a una pantalla para editar la habitación
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí podrías abrir un formulario para agregar una nueva habitación
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
