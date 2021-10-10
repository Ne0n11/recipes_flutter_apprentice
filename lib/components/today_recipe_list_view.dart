import 'package:flutter/material.dart';

<<<<<<< HEAD
=======
// 1
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
<<<<<<< HEAD
=======
  // 2
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    // 3
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
<<<<<<< HEAD
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
=======
      // 4
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 5
          Text(
              'Recipes of the Day 🍳',
              style: Theme.of(context).textTheme.headline1),
          // 6
          const SizedBox(height: 16),
          // 7
          Container(
            height: 400,
            // 1
            color: Colors.transparent,
// 2
            child: ListView.separated(
              // 3
              scrollDirection: Axis.horizontal,
              // 4
              itemCount: recipes.length,
              // 5
              itemBuilder: (context, index) {
                // 6
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              // 7
              separatorBuilder: (context, index) {
                // 8
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
<<<<<<< HEAD
      throw Exception("This card doesn't exist yet");
    }
  }
=======
      throw Exception('This card doesn\'t exist yet');
    }
  }


>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
}
