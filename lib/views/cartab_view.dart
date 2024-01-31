import 'package:flutter/material.dart';
import 'package:test_drive/views/shopping_view.dart';
import 'package:test_drive/views/details_view.dart';
import 'package:test_drive/views/spaceditem_view.dart';
import 'package:test_drive/views/todo_view.dart';


import 'package:test_drive/models/product.dart';


class CarTab extends StatelessWidget {
  const CarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 11,
        bottom: const TabBar(
          tabs: [
            Tab(text: "brand", icon: Icon(Icons.business_center_rounded)),
            Tab(text: "model", icon: Icon(Icons.card_travel)),
            Tab(text: "cards", icon: Icon(Icons.card_membership_rounded)),
            Tab(text: "tasks", icon: Icon(Icons.task_alt_rounded)),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          ShoppingList(
            products: [
              Product(name: 'Roll Royce'),
              Product(name: 'Ferarri La Fuoco'),
              Product(name: 'Lambogini Avantador'),
              Product(name: 'Porsche'),
              Product(name: 'Bugatti Chiron'),
              Product(name: 'Roll Royce'),
              Product(name: 'Ferarri La Fuoco'),
              Product(name: 'Lambogini Avantador'),
              Product(name: 'Porsche'),
              Product(name: 'Bugatti Chiron'),
              ],
            ),
            Details(),
            SpacedItemsList(),
            TodosScreen(),
        ],
        ) 
      ),
    );
  }
}

