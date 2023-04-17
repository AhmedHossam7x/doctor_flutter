import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_screen.dart';
import 'package:untitled1/screens/message_screen.dart';
import 'package:untitled1/screens/schedule_screen.dart';
import 'package:untitled1/screens/settings_screen.dart';

class NavbarRoots extends StatefulWidget{
  @override
  State<NavbarRoots> createState() => _NavbarRoots();
}
class _NavbarRoots extends State<NavbarRoots>{

  int selectedIndex= 0;
  final _screens=[
    HomeScreen(),
    MessageScreen(),
    Schedule(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: selectedIndex,
          onTap: (index){setState(() {selectedIndex = index;});},
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: "Schedule"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          ],
        )
      )
    );
  }
}