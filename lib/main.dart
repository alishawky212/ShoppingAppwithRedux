import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shoppinglistappwithredux/ShoppingCartApp.dart';
import 'package:shoppinglistappwithredux/model/CartItem.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:shoppinglistappwithredux/redux/reducers.dart';

void main() {
  final store = new DevToolsStore<List<CartItem>>(cartItemsReducer,
      initialState: new List());

  runApp(new FlutterReduxApp(store));
}

class FlutterReduxApp extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<List<CartItem>>(
      store: store,
      child: ShoppingCartApp(store),
    );
  }
}