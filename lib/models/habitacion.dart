class Habitacion {
  final String? id;
  final String nombre;
  final double precio;
  final String? imagenUrl; // opcional para mostrar foto luego

  Habitacion({
    this.id,
    required this.nombre,
    required this.precio,
    this.imagenUrl,
  });

  // Constructor desde Firestore
  factory Habitacion.fromMap(Map<String, dynamic> data, String id) {
    return Habitacion(
      id: id,
      nombre: data['nombre'] ?? '',
      precio: (data['precio'] ?? 0).toDouble(),
      imagenUrl: data['imagenUrl'],
    );
  }
}
