import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class ShoppingCart with ChangeNotifier {
  final List<String> _shoppingCart = ["Apple", "Oranges", "Grapes"];

  int get itemCount => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addCartItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
