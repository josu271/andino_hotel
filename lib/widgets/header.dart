import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String nombre;

  const Header({super.key, required this.nombre});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
    );
  }
}
