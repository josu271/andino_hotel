class CarritoItem {
  String id;
  String nombre;
  double precio;
  String tipo; // 'habitacion' o 'producto'
  String imagenUrl;

  CarritoItem({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.tipo,
    required this.imagenUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'precio': precio,
      'tipo': tipo,
      'imagenUrl': imagenUrl,
    };
  }

  factory CarritoItem.fromMap(Map<String, dynamic> data) {
    return CarritoItem(
      id: data['id'] ?? '',
      nombre: data['nombre'] ?? '',
      precio: (data['precio'] ?? 0).toDouble(),
      tipo: data['tipo'] ?? '',
      imagenUrl: data['imagenUrl'] ?? '',
    );
  }
}
