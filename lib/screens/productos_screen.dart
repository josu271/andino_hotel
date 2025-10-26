import 'package:flutter/material.dart';
import '../widgets/producto_card.dart';
import '../widgets/carrito_fab.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ProductoCard(nombre: "Desayuno Andino", precio: 25, imagen: "assets/p1.jpg"),
          ProductoCard(nombre: "Spa Natural", precio: 60, imagen: "assets/p2.jpg"),
        ],
      ),
      floatingActionButton: const CarritoFAB(),
    );
  }
}
