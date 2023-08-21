import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:state_multipage_app/data/bottom_navigationbar_items.dart';
import 'package:state_multipage_app/providers/counter_provider.dart';

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
              child: const Text("settings"),
            ),
            ElevatedButton(
              // onPressed: () => context.go("/user"),
              onPressed: () => context.goNamed('user'),
              child: const Text("user"),
            ),
            Text(
              'You have pushed the button this many times: ${context.watch<Counter>().count}',
            ),
            const Count2(),
          ],
        ),
      ),
      floatingActionButton: floatingButtons(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

// App components,

  Row floatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          // tooltip: "Increase",
          child: const Icon(Icons.add),
          onPressed: () => {context.read<Counter>().increment()},
        ),
        const SizedBox(
          width: 12.0,
        ),
        ElevatedButton(
          // tooltip: "Reset",
          child: const Icon(Icons.exposure_zero),
          onPressed: () => context.read<Counter>().reset(),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ElevatedButton(
          // tooltip: "Decrease",
          child: const Icon(Icons.remove),
          onPressed: () => context.read<Counter>().decrement(),
        ),
        const SizedBox(
          width: 12.0,
        ),
        ElevatedButton(
          // tooltip: "Set to 20",
          child: const Text("20"),
          onPressed: () => context.read<Counter>().setValue(20),
        ),
      ],
    );
  }

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

class Count2 extends StatelessWidget {
  const Count2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}');
  }
}
