import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Notification settings"),
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
