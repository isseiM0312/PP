import 'package:flutter/material.dart';
import 'package:pad_project/pages/processing.dart';
import 'package:pad_project/pages/sertificate.dart';
import 'package:pad_project/pages/thanks_page.dart';
import 'package:pad_project/pages/tracker.dart';
import './pages/setup_nickname.dart';
import './pages/setup_padApplication.dart';
import './pages/setup_padDonation.dart';
import 'package:pad_project/pages/are_you.dart';
import 'package:pad_project/pages/donation_confirm.dart';
import 'package:pad_project/pages/login.dart';
import 'package:pad_project/pages/pad_list.dart';
import 'package:pad_project/pages/setup_birthday.dart';
import 'package:pad_project/pages/setup_donator_info.dart';
import 'package:pad_project/pages/setup_infomation.dart';
import 'package:pad_project/pages/setup_photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padge',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  State<MyHomePage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyHomePage> {
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
