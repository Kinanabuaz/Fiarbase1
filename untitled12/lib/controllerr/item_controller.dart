import 'package:flutter/material.dart';

import '../modle/item.dart';

class ItemController extends ChangeNotifier {
  List<Item> listItem = [];

  addItem({required Item item}) {
    listItem.add(item);
    notifyListeners();
  }

  deleteItem({required int index}) {
    listItem.removeAt(index);
    notifyListeners();
  }

  updateItem({
    required Item item,
    required int index,
  }) {
    listItem[index] = item;
    notifyListeners();
  }
}