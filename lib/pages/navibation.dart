import 'package:flutter/material.dart';
import 'package:pad_project/pages/pad_list.dart';
import 'package:pad_project/pages/sertificate.dart';
import 'package:pad_project/pages/tracker.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  State<NavigationPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PadListPage(title: ''),
    TrackerPage(title: ''),
    SertificatePage(title: '')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/sanitary-pad.png')),
            label: 'Donation',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/trace.png')),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/person.png')),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
