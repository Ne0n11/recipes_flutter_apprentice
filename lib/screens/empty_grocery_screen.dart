import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:provider/provider.dart';

import '../models/models.dart';
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
=======
    // 1
    return Padding(
      padding: const EdgeInsets.all(30.0),
      // 2
      child: Center(
        // 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1
            Flexible(
              // 2
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
<<<<<<< HEAD
              'Tap the + button to write them down!',
=======
                  'Tap the + button to write them down!',
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              textColor: Colors.white,
              child: const Text('Browse Recipes'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.green,
              onPressed: () {
<<<<<<< HEAD
                // TODO: Update user's selected tab
              },
            ),
=======
                Provider.of<TabManager>(context, listen: false).goToRecipes();
              },
            ),

>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
          ],
        ),
      ),
    );
<<<<<<< HEAD
=======

>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  }
}
