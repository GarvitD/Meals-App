import 'package:flutter/material.dart';
import 'package:meales_app/models/meal.dart';
import 'package:meales_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('You have no favorites yet - Start adding some !'),
      );
    } else {
      return Container(
        height: double.maxFinite,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: favoriteMeals[index].id,
                title: favoriteMeals[index].title,
                imageUrl:favoriteMeals[index].imageUrl,
                affordability: favoriteMeals[index].affordability,
                complexity:favoriteMeals[index].complexity,
                duration: favoriteMeals[index].duration,);
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }

  }
}
