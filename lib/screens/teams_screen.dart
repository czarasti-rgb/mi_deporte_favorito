import 'package:flutter/material.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final equipos = [
      {
        'nombre': 'Barcelona SC',
        'pais': 'Ecuador',
        'icono': Icons.shield,
      },
      {
        'nombre': 'Real Madrid',
        'pais': 'España',
        'icono': Icons.star,
      },
      {
        'nombre': 'Manchester City',
        'pais': 'Inglaterra',
        'icono': Icons.sports_soccer,
      },
      {
        'nombre': 'Bayern Múnich',
        'pais': 'Alemania',
        'icono': Icons.emoji_events,
      },
      {
        'nombre': 'Inter Miami',
        'pais': 'Estados Unidos',
        'icono': Icons.sports,
      },
      {
        'nombre': 'PSG',
        'pais': 'Francia',
        'icono': Icons.shield_outlined,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: equipos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final equipo = equipos[index];

          return Card(
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Seleccionaste ${equipo['nombre']}',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.green,
                      child: Icon(
                        equipo['icono'] as IconData,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      equipo['nombre'] as String,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      equipo['pais'] as String,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Icon(
                      Icons.touch_app,
                      size: 18,
                      color: Colors.green,
                    ),

                    const SizedBox(height: 3),

                    const Text(
                      'Toca para seleccionar',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}