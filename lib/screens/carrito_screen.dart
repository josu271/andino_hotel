import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/carrito_provider.dart';

class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Carrito")),
      body: carrito.items.isEmpty
          ? const Center(child: Text("Tu carrito está vacío"))
          : ListView.builder(
              itemCount: carrito.items.length,
              itemBuilder: (context, index) {
                final item = carrito.items[index];
                return ListTile(
                  leading: const Icon(Icons.shopping_bag),
                  title: Text(item.nombre),
                  subtitle: Text("S/. ${item.precio}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => carrito.eliminar(item),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        color: Colors.brown.shade100,
        padding: const EdgeInsets.all(16),
        child: Text(
          "Total: S/. ${carrito.total.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
