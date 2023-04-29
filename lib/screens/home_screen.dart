import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state_multipage_app/data/bottom_navigationbar_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void _onItemTapped(int x) {
    setState(() {
      selectedIndex = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => context.go("/settings"),
                child: const Text("settings")),
            ElevatedButton(
                // onPressed: () => context.go("/user"),
                onPressed: () => context.goNamed('user'),
                child: const Text("user")),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

// App components,

  AppBar appBar() {
    return AppBar(
      title: const Text("Welcome !"),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      items: buttonList,
      backgroundColor: Colors.blue[700],
      // fixedColor: Colors.blue[700],
      selectedItemColor: Colors.blueAccent,
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      selectedFontSize: 0,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.blue[400]),
    );
  }
}
