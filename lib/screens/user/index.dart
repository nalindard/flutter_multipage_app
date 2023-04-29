import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                // onPressed: () => context.go("/user/bio"),
                onPressed: () {
                  var id = Random().nextInt(100);
                  context.goNamed(
                    'userBio',
                    params: {"id": id.toString()},
                    queryParams: {
                      "userName": "user$id",
                      "userAge": "$id years"
                    },
                  );
                },
                child: const Text("user --> bio")),
            ElevatedButton(
                // onPressed: () => context.go("/user/personality"),
                onPressed: () => context.goNamed('userPersonality'),
                child: const Text("user --> personality")),
          ],
        ),
      ),
    );
  }
}
