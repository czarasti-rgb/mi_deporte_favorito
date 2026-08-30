import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MiDeporteFavoritoApp());
}

class MiDeporteFavoritoApp extends StatelessWidget {
  const MiDeporteFavoritoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Deporte Favorito',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 20,
            ),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}