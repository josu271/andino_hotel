import 'package:flutter/material.dart';

class CarritoProvider with ChangeNotifier {
  final List<dynamic> _items = [];

  List<dynamic> get items => _items;

  double get total => _items.fold(0, (sum, item) => sum + item.precio);

  void agregarItem(dynamic item) {
    _items.add(item);
    notifyListeners();
  }

  void eliminarItem(dynamic item) {
    _items.remove(item);
    notifyListeners();
  }

  void limpiar() {
    _items.clear();
    notifyListeners();
  }
}
