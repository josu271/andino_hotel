import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/carrito_provider.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carrito = Provider.of<CarritoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Carrito"),
        backgroundColor: Colors.brown[700],
      ),
      body: carrito.items.isEmpty
          ? const Center(
              child: Text(
                "Tu carrito está vacío 🛒",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: carrito.items.length,
              itemBuilder: (context, index) {
                final item = carrito.items[index];
                return ListTile(
                  leading: const Icon(Icons.shopping_cart, color: Colors.brown),
                  title: Text(item.nombre),
                  subtitle:
                      Text("S/ ${item.precio.toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => carrito.eliminarItem(item),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.brown[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total: S/ ${carrito.total.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: carrito.items.isEmpty
                  ? null
                  : () {
                      carrito.limpiar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Compra realizada ✅')),
                      );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[700],
              ),
              child: const Text("Comprar"),
            ),
          ],
        ),
      ),
    );
  }
}
