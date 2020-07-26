import 'package:flutter/material.dart';

import './pages/firstPage.dart';
import './pages/secondPage.dart';
import './pages/thirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      Expanded(
        child: FirstPage(),
      ),
      Expanded(
        child: SecondPage(),
      ),
      Expanded(
        child: ThirdPage(),
      ),
    ];
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            minWidth: 60.0,
            groupAlignment: 0.0,
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.fastfood),
                selectedIcon: Icon(Icons.fastfood),
                label: const Text('Burgers'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.local_pizza),
                selectedIcon: Icon(Icons.local_pizza),
                label: const Text('French Fries'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.favorite),
                selectedIcon: Icon(Icons.favorite_border),
                label: const Text('Ice Cream'),
              ),
            ],
            selectedLabelTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              letterSpacing: 1,
              decorationThickness: 1.0,
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          pages[_selectedIndex]
        ],
      ),
    );
  }
}
