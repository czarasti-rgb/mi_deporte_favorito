import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Map<String, dynamic>> equipos = [
    {
      'nombre': 'Barcelona SC',
      'pais': 'Ecuador',
      'favorito': true,
    },
    {
      'nombre': 'Real Madrid',
      'pais': 'España',
      'favorito': false,
    },
    {
      'nombre': 'Manchester City',
      'pais': 'Inglaterra',
      'favorito': false,
    },
    {
      'nombre': 'Bayern Múnich',
      'pais': 'Alemania',
      'favorito': false,
    },
  ];

  void cambiarFavorito(int index) {
    setState(() {
      equipos[index]['favorito'] = !equipos[index]['favorito'];
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          equipos[index]['favorito']
              ? '${equipos[index]['nombre']} agregado a favoritos'
              : '${equipos[index]['nombre']} eliminado de favoritos',
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Favoritos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: equipos.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final equipo = equipos[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  equipo['nombre'][0],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                equipo['nombre'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(equipo['pais']),
              trailing: IconButton(
                icon: Icon(
                  equipo['favorito']
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: equipo['favorito']
                      ? Colors.red
                      : Colors.grey,
                ),
                onPressed: () => cambiarFavorito(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          final cantidad = equipos
              .where((equipo) => equipo['favorito'] == true)
              .length;

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Equipos favoritos'),
                content: Text(
                  'Actualmente tienes $cantidad equipo(s) favorito(s).',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Aceptar'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}