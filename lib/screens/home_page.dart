import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerButton(),
      ),
      drawer: const Drawer(),
      body: const Text(
        "Home",
        style: TextStyle(color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
