import 'package:flutter/material.dart';
import '../widgets/bottombarpublic.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text('Bienvenido al Hotel Andino'),
      ),
      bottomNavigationBar: const BottomBarPublic(), // 👈 Aquí lo agregas
    );
  }
}
