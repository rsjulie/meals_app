import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../models/meal.dart';
import '../components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoritesMeals;

  const FavoriteScreen(this._favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoritesMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: _favoritesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(_favoritesMeals[index]);
        },
      );
    }
  }
}
