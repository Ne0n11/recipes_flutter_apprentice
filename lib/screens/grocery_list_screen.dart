import 'package:flutter/material.dart';
<<<<<<< HEAD

import '../components/grocery_tile.dart';
import '../models/models.dart';
=======
import '../components/grocery_tile.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;

  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final groceryItems = manager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          return Dismissible(
            key: Key(item.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete_forever,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            onDismissed: (direction) {
              manager.deleteItem(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item.name} dismissed'),
                ),
              );
            },
            child: InkWell(
              child: GroceryTile(
                key: Key(item.id),
                item: item,
                onComplete: (change) {
                  if (change != null) {
                    manager.completeItem(index, change);
                  }
                },
              ),
              onTap: () {
                // TODO: Tap on grocery item
=======
    // 1
    final groceryItems = manager.groceryItems;
// 2
    return Padding(
      padding: const EdgeInsets.all(16.0),
      // 3
      child: ListView.separated(
        // 4
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // 1
          return Dismissible(
            // 6
            key: Key(item.id),
            // 7
            direction: DismissDirection.endToStart,
            // 8
            background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.delete_forever,
                    color: Colors.white, size: 50.0)),
            // 9
            onDismissed: (direction) {
              // 10
              manager.deleteItem(index);
              // 11
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item.name} dismissed')));
            },
            child: InkWell(
              child: GroceryTile(
                  key: Key(item.id),
                  item: item,
                  onComplete: (change) {
                    if (change != null) {
                      manager.completeItem(index, change);
                    }
                  }),
              // 2
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroceryItemScreen(
                      originalItem: item,
                      // 3
                      onUpdate: (item) {
                        // 4
                        manager.updateItem(item, index);
                        // 5
                        Navigator.pop(context);
                      },
                      // 6
                      onCreate: (item) {},
                    ),
                  ),
                );
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
              },
            ),
          );
        },
<<<<<<< HEAD
=======
        // 8
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
<<<<<<< HEAD
=======

>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  }
}
