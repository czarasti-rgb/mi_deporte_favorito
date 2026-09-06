import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/sport.dart';
import '../providers/sport_provider.dart';
import '../widgets/sport_card.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Sport> equipos = [
      Sport(
        name: 'Barcelona SC',
        description: 'Ecuador',
        image: '',
        category: 'Fútbol',
      ),
      Sport(
        name: 'Real Madrid',
        description: 'España',
        image: '',
        category: 'Fútbol',
      ),
      Sport(
        name: 'Manchester City',
        description: 'Inglaterra',
        image: '',
        category: 'Fútbol',
      ),
      Sport(
        name: 'Bayern Múnich',
        description: 'Alemania',
        image: '',
        category: 'Fútbol',
      ),
      Sport(
        name: 'Inter Miami',
        description: 'Estados Unidos',
        image: '',
        category: 'Fútbol',
      ),
      Sport(
        name: 'PSG',
        description: 'Francia',
        image: '',
        category: 'Fútbol',
      ),
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

          return Consumer<SportProvider>(
            builder: (context, provider, child) {
              return SportCard(
                sport: equipo,
                isFavorite: provider.isFavorite(equipo),
                onFavoritePressed: () {
                  provider.toggleFavorite(equipo);
                },
              );
            },
          );
        },
      ),
    );
  }
}