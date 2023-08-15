import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testecommerc/Model/item.dart';

class Cart with ChangeNotifier {
  List<Item> _items = [];
  double _price = 0.0;

  void add(Item item) {
    _items.add(item);
    _price +=item.price!;
  }

  void remove(Item item) {
    _items.remove(item);
    _price -= item.price!;
  }
}
