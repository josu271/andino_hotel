import 'package:flutter/material.dart';
import '../widgets/habitacion_card.dart';
import '../widgets/carrito_fab.dart';


class HabitacionesScreen extends StatelessWidget {
  const HabitacionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          HabitacionCard(nombre: "Suite Andina", precio: 250, imagen: "assets/h1.jpg"),
          HabitacionCard(nombre: "Habitación Familiar", precio: 180, imagen: "assets/h2.jpg"),
        ],
      ),
      floatingActionButton: const CarritoFAB(),
    );
  }
}
