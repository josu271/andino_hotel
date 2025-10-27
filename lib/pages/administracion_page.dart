import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../services/storage_service.dart';

class AdministracionPage extends StatefulWidget {
  const AdministracionPage({super.key});

  @override
  State<AdministracionPage> createState() => _AdministracionPageState();
}

class _AdministracionPageState extends State<AdministracionPage> {
  File? _imagen;
  final picker = ImagePicker();

  Future seleccionarImagen() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _imagen = File(picked.path);
      });
    }
  }

  Future subirImagen() async {
    if (_imagen != null) {
      await StorageService().subirImagen(_imagen!);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Imagen subida correctamente')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imagen == null
              ? const Text('No hay imagen seleccionada')
              : Image.file(_imagen!, height: 200),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: seleccionarImagen, child: const Text('Seleccionar Imagen')),
          ElevatedButton(onPressed: subirImagen, child: const Text('Subir a Firebase Storage')),
        ],
      ),
    );
  }
}
