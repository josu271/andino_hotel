class Producto {
  final String? id;
  final String nombre;
  final double precio;
  final String? imagenUrl;

  Producto({
    this.id,
    required this.nombre,
    required this.precio,
    this.imagenUrl,
  });

  // Constructor desde Firestore
  factory Producto.fromMap(Map<String, dynamic> data, String id) {
    return Producto(
      id: id,
      nombre: data['nombre'] ?? '',
      precio: (data['precio'] ?? 0).toDouble(),
      imagenUrl: data['imagenUrl'],
    );
  }
}
