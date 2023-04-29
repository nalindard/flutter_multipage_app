import 'package:flutter/material.dart';

class WallpaperSettingsScreen extends StatelessWidget {
  const WallpaperSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen --> Wallpaper"),
      ),
      body: const Center(
        child: Text("Display settings --> Wallpaper"),
      ),
    );
  }
}
