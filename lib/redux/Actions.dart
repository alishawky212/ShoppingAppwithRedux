
import 'package:shoppinglistappwithredux/model/CartItem.dart';

class AddItemAction{

  final CartItem cartItem;

  AddItemAction(this.cartItem);

}

class ToggleItemStateAction{
  final CartItem cartItem;

  ToggleItemStateAction(this.cartItem);
}

class FetchItemsAction {}

class ItemLoadedAction {
  final List<CartItem> items;

  ItemLoadedAction(this.items);
}

class RemoveItemAction {
  final CartItem item;

  RemoveItemAction(this.item);
}