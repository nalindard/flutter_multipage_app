import 'package:flutter/material.dart';

class TimeoutSettingsScreen extends StatelessWidget {
  const TimeoutSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen --> Timeout"),
      ),
      body: const Center(
        child: Text("Display settings --> Timeout"),
      ),
    );
  }
}
