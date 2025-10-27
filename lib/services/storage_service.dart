import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> subirImagen(File imagen) async {
    final nombreArchivo = DateTime.now().millisecondsSinceEpoch.toString();
    final ref = _storage.ref().child("uploads/$nombreArchivo.jpg");
    await ref.putFile(imagen);
  }
}
