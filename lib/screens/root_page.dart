import 'package:crud_dart/screens/dummy_page.dart';
import 'package:crud_dart/screens/home_page.dart';
import 'package:crud_dart/screens/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SettingsPage(),
    const Dummy()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: const DrawerButton(),
        backgroundColor: const Color.fromARGB(255, 175, 39, 199),
      ),
      // drawer: const Drawer(
      //   backgroundColor: Color.fromARGB(255, 175, 39, 199),
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [_pages.elementAt(_selectedIndex)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 212, 71, 237)),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.gear), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.map), label: "")
        ],
      ),
    );
  }
}
