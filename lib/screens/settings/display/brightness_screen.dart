import 'package:flutter/material.dart';

class BrightnessSettingsScreen extends StatelessWidget {
  const BrightnessSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen --> Brightness"),
      ),
      body: const Center(
        child: Text("Display settings --> Brightness"),
      ),
    );
  }
}
