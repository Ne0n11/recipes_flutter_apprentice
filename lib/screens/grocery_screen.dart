import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
<<<<<<< HEAD
import 'screens.dart';
=======

import 'empty_grocery_screen.dart';
import 'grocery_item_screen.dart';
import 'grocery_list_screen.dart';


>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // TODO: Create New Item
        },
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(
      builder: (context, manager, child) {
        if (manager.groceryItems.isNotEmpty) {
          return GroceryListScreen(manager: manager);
        } else {
=======

    // 5
    return Scaffold(
      // 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // 1
          final manager = Provider.of<GroceryManager>(
              context,
              listen: false);
// 2
          Navigator.push(
            context,
            // 3
            MaterialPageRoute(
              // 4
              builder: (context) => GroceryItemScreen(
                // 5
                onCreate: (item) {
                  // 6
                  manager.addItem(item);
                  // 7
                  Navigator.pop(context);
                },
                // 8
                onUpdate: (item) {},
              ),
            ),
          );

        },
      ),
      // 7
      body: buildGroceryScreen(),
    );

  }


  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          return GroceryListScreen(manager: manager);
        } else {
          // 4
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
          return const EmptyGroceryScreen();
        }
      },
    );
  }
<<<<<<< HEAD
=======

>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
}
