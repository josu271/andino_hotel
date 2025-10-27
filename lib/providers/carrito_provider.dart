import 'package:flutter/material.dart';
import '../models/producto.dart';
import '../models/habitacion.dart';

class CarritoProvider extends ChangeNotifier {
  final List<dynamic> _items = []; // mezcla productos y habitaciones

  List<dynamic> get items => _items;

  void agregarItem(dynamic item) {
    _items.add(item);
    notifyListeners();
  }

  void eliminarItem(dynamic item) {
    _items.remove(item);
    notifyListeners();
  }

  double get total {
    return _items.fold(0, (sum, item) => sum + item.precio);
  }

  void limpiar() {
    _items.clear();
    notifyListeners();
  }
}
