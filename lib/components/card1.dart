import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../fooderlich_theme.dart';
=======
import '/themes/fooderlich_theme.dart';
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
<<<<<<< HEAD
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
=======
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
        ),
      ),
    );
  }
}
