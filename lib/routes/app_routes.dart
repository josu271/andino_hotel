import 'package:flutter/material.dart';
import '../screens/splash.dart';
import '../screens/login.dart';
import '../screens/home.dart';
import '../screens/reservas.dart';
import '../screens/huespedes.dart';
import '../screens/habitaciones.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/splash': (context) => const Splash(),
      '/login': (context) => const Login(),
      '/home': (context) => const Home(),
      '/reservas': (context) => const Reservas(),
      '/huespedes': (context) => const Huespedes(),
      '/habitaciones': (context) => const Habitaciones(),
    };
  }
} 
