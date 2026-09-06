import 'package:flutter/material.dart';
import '../models/sport.dart';
import 'favorite_button.dart';

class SportCard extends StatelessWidget {
  final Sport sport;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const SportCard({
    super.key,
    required this.sport,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.sports_soccer,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              sport.name,
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
              sport.description,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            FavoriteButton(
              isFavorite: isFavorite,
              onPressed: onFavoritePressed,
            ),
            Text(
              isFavorite
                  ? 'En favoritos'
                  : 'Agregar a favoritos',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}