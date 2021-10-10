import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'grocery_item.dart';

class GroceryManager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];
  int _selectedIndex = -1;
  bool _createNewItem = false;

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);
  int get selectedIndex => _selectedIndex;
  GroceryItem? get selectedGroceryItem =>
      _selectedIndex != -1 ? _groceryItems[_selectedIndex] : null;
  bool get isCreatingNewItem => _createNewItem;

  void createNewItem() {
    _createNewItem = true;
    notifyListeners();
  }

=======
import 'grocery_item.dart';

class GroceryManager extends ChangeNotifier {
  // 1
  final _groceryItems = <GroceryItem>[];

  // 2
  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  // 3
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  void deleteItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

<<<<<<< HEAD
  void groceryItemTapped(int index) {
    _selectedIndex = index;
    _createNewItem = false;
    notifyListeners();
  }

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    _createNewItem = false;
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    _selectedIndex = -1;
    _createNewItem = false;
    notifyListeners();
  }

=======
  // 4
  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  // 5
  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  // 6
>>>>>>> b5ba3db734acb21bb248c77ae2dff211d07ed08b
  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
