import 'package:flutter/material.dart';
import '../screens/carrito_screen.dart';

class CarritoFAB extends StatelessWidget {
  const CarritoFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.shopping_cart),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CarritoScreen()), 
        );
      },
    );
  }
}
