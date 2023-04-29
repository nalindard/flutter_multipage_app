import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NetworkSettingsScreen extends StatelessWidget {
  final String? id;

  const NetworkSettingsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Netwoek settings"),
            const SizedBox(width: 20, height: 52),
            Text("Passed parameter id: $id"),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
