import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DisplaySettingsScreen extends StatelessWidget {
  const DisplaySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              // onPressed: () => context.go("/settings/display/brightness"),
              onPressed: () => context.goNamed("brightness-settings"),
              child: const Text("s/d --> brightness"),
            ),
            ElevatedButton(
              // onPressed: () => context.go("/settings/display/timeout"),
              onPressed: () => context.goNamed("timeout-settings"),
              child: const Text("s/d --> timeout"),
            ),
            ElevatedButton(
              // onPressed: () => context.go("/settings/display/wallpaper"),
              onPressed: () => context.goNamed("wallpaper-settings"),
              child: const Text("s/d --> wallpaper"),
            ),
          ],
        ),
      ),
    );
  }
}
