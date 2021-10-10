import 'package:flutter/material.dart';

import '../models/models.dart';

class RecipeThumbnail extends StatelessWidget {
<<<<<<< HEAD
=======
  // 1
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  final SimpleRecipe recipe;

  const RecipeThumbnail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
=======
    // 2
    return Container(
      padding: const EdgeInsets.all(8),
      // 3
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 4
          Expanded(
            // 5
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
            child: ClipRRect(
              child: Image.asset(
                '${recipe.dishImage}',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
<<<<<<< HEAD
          const SizedBox(height: 10),
=======
          // 6
          const SizedBox(height: 10),
          // 7
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
          Text(
            recipe.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            recipe.duration,
            style: Theme.of(context).textTheme.bodyText1,
<<<<<<< HEAD
          ),
=======
          )
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
        ],
      ),
    );
  }
}
