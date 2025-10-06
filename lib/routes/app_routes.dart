import 'package:flutter/material.dart';
import '../screens/splash.dart';
import '../screens/login.dart';
import '../screens/home.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/splash': (context) => const Splash(),
      '/login': (context) => const Login(),
      '/home': (context) => const Home(),
    };
  }
} 
