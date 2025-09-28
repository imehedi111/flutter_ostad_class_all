import 'package:flutter/material.dart';
import 'package:myapp4/assaignment_ui/home_page.dart';
import 'package:myapp4/module_10/class_3.dart';
import 'package:myapp4/module_11/alert.dart';
import 'package:myapp4/module_11/class_1.dart';
import 'package:myapp4/module_11/grid_view_class_1.dart';
import 'package:myapp4/module_12/tabs_and_drawer.dart';
import 'package:myapp4/my_app_one/login_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0;
  List pages = [
    UserLoginMyApp(),
    AssignmentUi(),
    Module11Class1(),
    GridViewClass1(),
    Alert(),
  ];

  onTap(int index){
    setState(() {
      // print('test index $index');
      _selectedIndex = index;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.orange,
          useLegacyColorScheme:false,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
            BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Like'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          ]
      ),
    );
  }
}
