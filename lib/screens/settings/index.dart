import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go("/settings/display"),
              child: const Text("settings --> display"),
            ),
            ElevatedButton(
              onPressed: () {
                var id = Random().nextInt(100);
                context.go("/settings/network/$id");
              },
              child: const Text("settings --> network"),
            ),
            ElevatedButton(
              onPressed: () => context.go("/settings/notification"),
              child: const Text("settings --> notification"),
            ),
          ],
        ),
      ),
    );
  }
}
