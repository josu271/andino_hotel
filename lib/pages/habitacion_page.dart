import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/habitacion.dart';
import '../providers/carrito_provider.dart';

class HabitacionPage extends StatelessWidget {
  const HabitacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoProvider>(context);

    // Datos de ejemplo (luego se cargarán desde Firestore)
    final habitaciones = [
      Habitacion(nombre: "Suite Andina", precio: 120.0),
      Habitacion(nombre: "Habitación Cusqueña", precio: 90.0),
      Habitacion(nombre: "Habitación Machu Picchu", precio: 150.0),
      Habitacion(nombre: "Habitación Valle Sagrado", precio: 110.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Habitaciones Andinas"),
        backgroundColor: Colors.brown[700],
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.pushNamed(context, '/carrito');
                },
              ),
              if (carrito.items.isNotEmpty)
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      carrito.items.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      // 👇 Aquí está el body que faltaba
      body: ListView.builder(
        itemCount: habitaciones.length,
        itemBuilder: (context, index) {
          final habitacion = habitaciones[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.bed_rounded, color: Colors.brown),
              title: Text(habitacion.nombre),
              subtitle: Text("S/ ${habitacion.precio.toStringAsFixed(2)}"),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () => carrito.agregarItem(habitacion),
              ),
            ),
          );
        },
      ),
    );
  }
}
