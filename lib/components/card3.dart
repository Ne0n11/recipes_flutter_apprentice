import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../fooderlich_theme.dart';
=======
import '/themes/fooderlich_theme.dart';
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
import '../models/models.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card3({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  List<Widget> createTagChips() {
    final chips = <Widget>[];
<<<<<<< HEAD
    recipe.tags.take(6).forEach(
      (element) {
        final chip = Chip(
          label: Text(
            element,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
          backgroundColor: Colors.black.withOpacity(0.7),
        );
        chips.add(chip);
      },
    );
=======
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
        label: Text(
          element,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
      );
      chips.add(chip);
    });
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
<<<<<<< HEAD
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
=======
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
<<<<<<< HEAD
                  Text(
                    recipe.title,
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
=======
                  Text(recipe.title,
                      style: FooderlichTheme.darkTextTheme.headline2),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
<<<<<<< HEAD
                alignment: WrapAlignment.start,
                spacing: 12,
                children: createTagChips(),
              ),
=======
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  children: createTagChips()),
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
            ),
          ],
        ),
      ),
    );
  }
}
