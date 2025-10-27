import 'package:flutter/material.dart';


class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            "Iniciar Sesión",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Correo electrónico'),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Contraseña'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes conectar con Firebase Auth
            },
            child: const Text('Ingresar'),
          ),
        ],
      ),
    );
  }
}
