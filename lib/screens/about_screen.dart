import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
    Text(
      'Index 4: Profile',
    ),
  ];

  static const List<Widget> _widgetOptions2 = <Widget>[
    Text(
      'Index 0: Page One',
    ),
    Text(
      'Index 1: Page Two',
    ),
    Text(
      'Index 2: Page Three',
    ),
    Text(
      'Index 3: Page Four',
    ),
    Text(
      'Index 4: Page Five',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bottom Navigation Bar'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),

      // Add your pages here
      routes: <String, WidgetBuilder>{
        '/pageOne': (BuildContext context) =>
            Scaffold(body: _widgetOptions2.elementAt(0)),
        '/pageTwo': (BuildContext context) =>
            Scaffold(body: _widgetOptions2.elementAt(1)),
        '/pageThree': (BuildContext context) =>
            Scaffold(body: _widgetOptions2.elementAt(2)),
        '/pageFour': (BuildContext context) =>
            Scaffold(body: _widgetOptions2.elementAt(3)),
        '/pageFive': (BuildContext context) =>
            Scaffold(body: _widgetOptions2.elementAt(4)),
      },
    );
  }
}
