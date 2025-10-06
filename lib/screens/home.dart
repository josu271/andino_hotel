import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> habitaciones = [
      {
        'nombre': 'Habitación Simple',
        'precio': 120,
        'imagen': 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2',
        'disponible': true,
      },
      {
        'nombre': 'Habitación Doble',
        'precio': 200,
        'imagen': 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353',
        'disponible': false,
      },
      {
        'nombre': 'Suite Ejecutiva',
        'precio': 350,
        'imagen': 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
        'disponible': true,
      },
      {
        'nombre': 'Suite Familiar',
        'precio': 400,
        'imagen': 'https://images.unsplash.com/photo-1576678927484-cc907957088c',
        'disponible': true,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Habitaciones'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const Sidebar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: habitaciones.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // dos columnas
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65, // más espacio vertical
          ),
          itemBuilder: (context, index) {
            final habitacion = habitaciones[index];
            final bool disponible = habitacion['disponible'] as bool;

            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Image.network(
                      habitacion['imagen'] as String,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Contenido expandido para evitar overflow
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            habitacion['nombre'] as String,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'S/ ${habitacion['precio']} por noche',
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: disponible
                                  ? Colors.green[100]
                                  : Colors.red[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  disponible
                                      ? Icons.check_circle
                                      : Icons.cancel,
                                  color: disponible
                                      ? Colors.green
                                      : Colors.red,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  disponible ? 'Disponible' : 'Ocupada',
                                  style: TextStyle(
                                    color: disponible
                                        ? Colors.green[700]
                                        : Colors.red[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: disponible
                                  ? () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Has reservado ${habitacion['nombre']} 🏨'),
                                          duration:
                                              const Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                disabledBackgroundColor: Colors.grey,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                              ),
                              child: const Text(
                                'Reservar',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

