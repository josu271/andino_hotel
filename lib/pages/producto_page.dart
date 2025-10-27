import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/producto.dart';
import '../providers/carrito_provider.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoProvider>(context);

    // Datos de ejemplo (luego vendrán de Firestore)
    final productos = [
      Producto(nombre: "Mate de Coca", precio: 15.0),
      Producto(nombre: "Chompa Andina", precio: 80.0),
      Producto(nombre: "Poncho Cusqueño", precio: 120.0),
      Producto(nombre: "Gorro de Alpaca", precio: 40.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos Andinos"),
        backgroundColor: Colors.brown[700],
      ),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          final producto = productos[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.shopping_bag_rounded, color: Colors.brown),
              title: Text(producto.nombre),
              subtitle: Text("S/ ${producto.precio.toStringAsFixed(2)}"),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () => carrito.agregarItem(producto),
              ),
            ),
          );
        },
      ),
    );
  }
}
