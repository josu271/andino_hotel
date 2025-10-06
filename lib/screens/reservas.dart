import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Reservas extends StatelessWidget {
  const Reservas({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulación de una reserva (datos estáticos)
    final Map<String, dynamic> reserva = {
      'nombre': 'José Luis Sulla',
      'habitacion': 'Suite Deluxe',
      'numero': '302',
      'ubicacion': 'Piso 3 - Vista al mar',
      'precio': 'S/ 450 por noche',
      'fechaEntrada': '05/10/2025',
      'fechaSalida': '07/10/2025',
      'servicios': ['Wi-Fi', 'Desayuno', 'Jacuzzi', 'TV 4K'],
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Reservas'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const Sidebar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Detalles de tu Reserva',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Filas de información
                  _buildInfoRow(Icons.person, 'Huésped', reserva['nombre'] as String),
                  _buildInfoRow(Icons.hotel, 'Habitación', reserva['habitacion'] as String),
                  _buildInfoRow(Icons.confirmation_number, 'Número', reserva['numero'] as String),
                  _buildInfoRow(Icons.location_on, 'Ubicación', reserva['ubicacion'] as String),
                  _buildInfoRow(Icons.attach_money, 'Precio', reserva['precio'] as String),
                  _buildInfoRow(Icons.calendar_today, 'Entrada', reserva['fechaEntrada'] as String),
                  _buildInfoRow(Icons.calendar_today_outlined, 'Salida', reserva['fechaSalida'] as String),

                  const SizedBox(height: 15),
                  const Text(
                    'Servicios incluidos:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // Lista de servicios
                  Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: (reserva['servicios'] as List<String>)
                        .map((servicio) => Chip(
                              label: Text(servicio),
                              backgroundColor: Colors.blueAccent.shade100,
                            ))
                        .toList(),
                  ),

                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.map),
                      label: const Text('Ver ubicación del hotel'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'El hotel está ubicado en Av. Costa del Sol 123 - Lima'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget auxiliar para mostrar info de la reserva
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '$label: $value',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
