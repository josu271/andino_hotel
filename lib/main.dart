import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'providers/carrito_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HotelAndinoApp());
}

class HotelAndinoApp extends StatelessWidget {
  const HotelAndinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CarritoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Andino',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const SplashScreen(),
      ),
    );
  }
}
