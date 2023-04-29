import 'package:flutter/material.dart';

class UserBioScreen extends StatelessWidget {
  final String id;
  final Map params;

  const UserBioScreen({super.key, required this.id, required this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen --> Bio"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("User settings --> Bio"),
            Text("User id --> $id"),
            Text("Query params --> $params"),
          ],
        ),
      ),
    );
  }
}
