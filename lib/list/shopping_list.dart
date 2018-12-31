import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shoppinglistappwithredux/list/ShoppingListItem.dart';
import 'package:shoppinglistappwithredux/model/CartItem.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StoreConnector<List<CartItem>, List<CartItem>>(
      converter: (store) => store.state,
      builder: (context, list) {
        return new ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, position) =>
                ShoppingListItem(list[position]));
      },
    );
  }
}