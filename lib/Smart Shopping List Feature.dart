import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'datamodel.dart'; // Your custom model file

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final List<ShoppingItem> _shoppingList = [];
  final List<ShoppingItem> _pantryItems = [];
  final TextEditingController _itemController = TextEditingController();
  bool _showPantry = false;

  @override
  void initState() {
    super.initState();
    _loadShoppingList();
    _loadPantryItems();
  }

  Future<void> _loadShoppingList() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _shoppingList.addAll([
        ShoppingItem(name: 'Apples', quantity: 5, category: 'Fruits'),
        ShoppingItem(name: 'Chicken Breast', quantity: 2, category: 'Meat'),
        ShoppingItem(name: 'Rice', quantity: 1, category: 'Grains'),
      ]);
    });
  }

  Future<void> _loadPantryItems() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _pantryItems.addAll([
        ShoppingItem(name: 'Pasta', quantity: 2, category: 'Grains'),
        ShoppingItem(name: 'Tomato Sauce', quantity: 3, category: 'Canned Goods'),
        ShoppingItem(name: 'Olive Oil', quantity: 1, category: 'Oils'),
      ]);
    });
  }

  void _addItem() {
    if (_itemController.text.trim().isEmpty) return;

    setState(() {
      final newItem = ShoppingItem(
        name: _itemController.text.trim(),
        quantity: 1,
        category: 'Other',
      );
      _showPantry ? _pantryItems.add(newItem) : _shoppingList.add(newItem);
      _itemController.clear();
    });
  }

  Future<void> _orderGroceries() async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      final itemsToOrder = _shoppingList.map((item) => {
        'name': item.name,
        'quantity': item.quantity,
        'category': item.category,
      }).toList();

      await firestore.collection('orders').add({
        'timestamp': FieldValue.serverTimestamp(),
        'items': itemsToOrder,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Items added to cart')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving order: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade200,
          title: const Text('Shopping List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _itemController,
                    decoration: const InputDecoration(
                      labelText: 'Add item',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _addItem(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addItem,
                ),
              ],
            ),
          ),
          ToggleButtons(
            isSelected: [_showPantry == false, _showPantry == true],
            onPressed: (index) {
              setState(() {
                _showPantry = index == 1;
              });
            },
            children: const [
              Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Shopping List')),
              Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('My Pantry')),
            ],
          ),
          Expanded(
            child: _showPantry ? _buildPantryList() : _buildShoppingList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: _orderGroceries,
              icon: const Icon(Icons.shopping_cart),
              label: const Text('    Add to Cart     '),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShoppingList() {
    if (_shoppingList.isEmpty) {
      return const Center(child: Text('Your shopping list is empty'));
    }

    return ListView.builder(
      itemCount: _shoppingList.length,
      itemBuilder: (context, index) {
        final item = _shoppingList[index];
        return Dismissible(
          key: Key(item.name),
          background: Container(color: Colors.red),
          onDismissed: (direction) {
            setState(() => _shoppingList.removeAt(index));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Removed ${item.name}'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    setState(() => _shoppingList.insert(index, item));
                  },
                ),
              ),
            );
          },
          child: ListTile(
            title: Text(item.name),
            subtitle: Text('${item.quantity} unit(s) • ${item.category}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (item.quantity > 1) {
                        item.quantity--;
                      } else {
                        _shoppingList.removeAt(index);
                      }
                    });
                  },
                ),
                Text(item.quantity.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() => item.quantity++);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPantryList() {
    if (_pantryItems.isEmpty) {
      return const Center(child: Text('Your pantry is empty'));
    }

    return ListView.builder(
      itemCount: _pantryItems.length,
      itemBuilder: (context, index) {
        final item = _pantryItems[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text('${item.quantity} unit(s) • ${item.category}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    if (item.quantity > 1) {
                      item.quantity--;
                    } else {
                      _pantryItems.removeAt(index);
                    }
                  });
                },
              ),
              Text(item.quantity.toString()),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() => item.quantity++);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
