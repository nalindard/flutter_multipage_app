import 'package:flutter/material.dart';

class UserPersonalityScreen extends StatelessWidget {
  const UserPersonalityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen --> Personality"),
      ),
      body: const Center(
        child: Text("User settings --> Personality"),
      ),
    );
  }
}
