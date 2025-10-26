import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Iniciar Sesión")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text("Registrarse")),
          ],
        ),
      ),
    );
  }
}
