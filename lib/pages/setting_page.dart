import 'package:flutter/material.dart';
import 'package:myapp/pages/first_page.dart';
import 'package:myapp/pages/second_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // const SettingPage({super.key});
  int _selectedIndex = 0;

  void _setIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    FirstPage(),
    SecondPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _setIndex,
        backgroundColor: Colors.deepOrange[100],
        items: const [
          // first page
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "First Page"),

          // second page
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Second Page"),

          // setting page
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting page",
          )
        ],
      ),
      // body: Center(
      //   child: Container(
      //     height: 300,
      //     width: 300,
      //     color: Colors.deepPurpleAccent,
      //     child: Text("Setting Page"),
      //   ),
      // ),
    );
  }
}
