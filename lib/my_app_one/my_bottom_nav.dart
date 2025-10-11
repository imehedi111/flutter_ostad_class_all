import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp4/assaignment_ui/home_page.dart';
import 'package:myapp4/gym_app_ui/gym_home.dart';
import 'package:myapp4/module_10/class_3_formfields_login.dart';
import 'package:myapp4/module_11/grid_view_class_1.dart';
import 'package:myapp4/module_12/tabs_and_drawer.dart';
import 'package:myapp4/my_app_one/login_page.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  final Color navigationBarColor = Colors.black;
  int _selectedIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  // List page =[
  //   GymHome(),
  //   GridViewClass1(),
  //   UserLoginMyApp(),
  //   AssignmentUi(),
  // ];

  // onTap(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        // backgroundColor: Colors.grey,
        // body: page[_selectedIndex],

        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            GymHome(),
            LoginForm(),
            AssignmentUi(),
            UserLoginMyApp(),
          ],
        ),

        //here star bottom nave bar.........................bottom nav
        bottomNavigationBar: WaterDropNavBar(
          inactiveIconColor: Colors.grey.shade900,
          waterDropColor: Colors.white,
          backgroundColor: navigationBarColor,
          onItemSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
            pageController.animateToPage(_selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: _selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.person,
                outlinedIcon: Icons.person_outline_outlined),
            BarItem(
              filledIcon: Icons.location_on,
              outlinedIcon: Icons.location_on_outlined,
            ),
            BarItem(
              filledIcon: Icons.login,
              outlinedIcon: Icons.login_outlined,
            ),
          ],
        ),
      ),
    );
  }
}