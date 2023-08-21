import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/shopping_cart_provider.dart';

class UserPersonalityScreen extends StatelessWidget {
  const UserPersonalityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen --> Personality"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text("User settings --> Personality"),
          ),
          Text('${context.watch<ShoppingCart>().itemCount}'),
          Text('${context.watch<ShoppingCart>().cart}'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ShoppingCart>().addCartItem("Strewberry");
            },
            child: const Text("Add Item"),
          )
        ],
      ),
    );
  }
}
