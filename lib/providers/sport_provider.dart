import 'package:flutter/material.dart';
import '../models/sport.dart';

class SportProvider extends ChangeNotifier {
  final List<Sport> _favorites = [];

  List<Sport> get favorites => _favorites;

  bool isFavorite(Sport sport) {
    return _favorites.contains(sport);
  }

  void toggleFavorite(Sport sport) {
    if (isFavorite(sport)) {
      _favorites.remove(sport);
    } else {
      _favorites.add(sport);
    }

    notifyListeners();
  }
}