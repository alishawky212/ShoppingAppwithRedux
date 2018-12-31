import 'package:shoppinglistappwithredux/model/CartItem.dart';
import 'package:shoppinglistappwithredux/redux/Actions.dart';

List<CartItem> cartItemsReducer(List<CartItem> items, dynamic action) {
  if (action is AddItemAction) {
    return addItem(items, action);
  } else if (action is ToggleItemStateAction) {
    return toggleItemState(items, action);
  }
  return items;
}

List<CartItem> addItem(List<CartItem> items, AddItemAction action) {
  return List.from(items)..add(action.cartItem);
}

List<CartItem> toggleItemState(List<CartItem> items, ToggleItemStateAction action) {
  return items.map((item) => item.name == action.cartItem.name ?
  action.cartItem : item).toList();
}