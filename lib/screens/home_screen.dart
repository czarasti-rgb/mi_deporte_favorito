import 'package:flutter/material.dart';
import 'teams_screen.dart';
import 'favorites_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Deporte Favorito'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 55,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.sports_soccer,
                  size: 70,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'FÚTBOL SALA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Descubre información, equipos y datos sobre mi deporte favorito.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 25),

              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.emoji_events,
                        size: 45,
                        color: Colors.amber,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Actividad Integradora 2',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Nueva versión de la aplicación con navegación, nuevas pantallas e interacción.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TeamsScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.groups),
                label: const Text('Ver equipos'),
              ),

              const SizedBox(height: 12),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritesScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.favorite),
                label: const Text('Mis favoritos'),
              ),

              const SizedBox(height: 12),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.info),
                label: const Text('Acerca de'),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}