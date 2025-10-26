import 'package:flutter/material.dart';
import '../models/producto.dart';

class CarritoProvider extends ChangeNotifier {
  final List<Producto> _items = [];

  List<Producto> get items => _items;

  void agregar(Producto p) {
    _items.add(p);
    notifyListeners();
  }

  void eliminar(Producto p) {
    _items.remove(p);
    notifyListeners();
  }

  double get total => _items.fold(0, (t, e) => t + e.precio);
}
