import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 247, 250, 247),
            elevation: 0,
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 247, 250, 247),
          textTheme: GoogleFonts.playfairDisplayTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          )),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    HomePage(),
    const Icon(
      Icons.camera,
      size: 150,
    ),
    const Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(
          size: 30,
        ),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
            ),
            activeIcon: Icon(
              Icons.dashboard_rounded,
            ),
            label: 'The Wall',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border_outlined,
            ),
            label: 'Bookmarks',
            activeIcon: Icon(
              Icons.bookmark,
            ),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.account_circle_outlined,
          //   ),
          //   label: 'Profile',
          // ),
        ],
      ),
    );
  }
}
