import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp4/gym_app_ui/gym_home.dart';
import 'package:myapp4/gym_app_ui/workout_page.dart';
import 'package:myapp4/module_10/btnnew.dart';
import 'package:myapp4/cntr.dart';
import 'package:myapp4/home.dart';
import 'package:myapp4/module_10/class_3.dart';
import 'package:myapp4/module_10/class_3_formfields_login.dart';
import 'package:myapp4/module_10/input_text.dart';
import 'package:myapp4/module_11/alert.dart';
import 'package:myapp4/module_11/class_1.dart';
import 'package:myapp4/module_11/class_2.dart';
import 'package:myapp4/module_11/grid_view_class_1.dart';
import 'package:myapp4/module_12/bottom_nav.dart';
import 'package:myapp4/module_12/tabs_and_drawer.dart';
import 'package:myapp4/module_14/class_1_responsive.dart';
import 'package:myapp4/module_14/class_3_todo_app.dart';
import 'package:myapp4/module_14/expanded_class_1.dart';
import 'package:myapp4/module_14/screenutil_package_use.dart';
import 'package:myapp4/module_15/fav_btn_class_1.dart';
import 'package:myapp4/module_15/stless_stfull_class_1.dart';
import 'package:myapp4/my_app_one/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp4/my_app_one/my_bottom_nav.dart';
import 'package:myapp4/my_app_one/zoom_drawer.dart';

import 'assaignment_ui/home_page.dart';
import 'my_app_one/shop_ui_practice_1.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          // theme: ThemeData(
          //   brightness: Brightness.light,
          //   primaryColor: Colors.orange,
          //   primarySwatch: Colors.purple,
          //   scaffoldBackgroundColor: Colors.white,
          //   elevatedButtonTheme: ElevatedButtonThemeData(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.orange,
          //       foregroundColor: Colors.black,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.only(
          //           bottomLeft: Radius.circular(0),
          //           topLeft: Radius.circular(25),
          //           topRight: Radius.circular(0),
          //           bottomRight: Radius.circular(25),
          //         ),
          //       ),
          //     ),
          //   ),
          //   inputDecorationTheme: InputDecorationTheme(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //       borderSide: BorderSide(color: Colors.orange, width: 3),
          //     ),
          //     enabledBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(15),
          //       borderSide: BorderSide(color: Colors.orange, width: 3),
          //     ),
          //     focusedBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.only(
          //         bottomRight: Radius.circular(25),
          //         topRight: Radius.circular(0),
          //         topLeft: Radius.circular(25),
          //         bottomLeft: Radius.circular(0),
          //       ),
          //       borderSide: BorderSide(color: Colors.orange, width: 4),
          //     ),
          //     hintStyle: TextStyle(color: Colors.purple),
          //     labelStyle: TextStyle(color: Colors.green),
          //     helperStyle: TextStyle(color: Colors.orange),
          //   ),
          //   textTheme: TextTheme(
          //     bodyLarge: TextStyle(
          //       fontSize: 16,
          //       fontFamily: 'Roboto',
          //       fontWeight: FontWeight.w500,
          //     ),
          //     titleMedium: TextStyle(fontSize: 14, color: Colors.red),
          //   ),
          //   cardTheme: CardThemeData(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(0),
          //         topLeft: Radius.circular(30),
          //         topRight: Radius.circular(0),
          //         bottomRight: Radius.circular(30),
          //       ),
          //     ),
          //     color: Colors.yellow,
          //     elevation: 15,
          //     shadowColor: Colors.green,
          //   ),
          // ),
          // themeMode: ThemeMode.system,
          // darkTheme: ThemeData(),
          debugShowCheckedModeBanner: false,
          title: 'My App Design',
          home: Zoom(),
          // initialRoute: '/bottomNav',
          // routes: {
          //   '/home'   : (context) => UserLoginMyApp(),
          //   '/travel' : (context) => AssignmentUi(),
          //   '/grid'   : (context) => GridViewClass1(),
          //   '/stack'  : (context) => Alert(),
          //   '/bottomNav' : (context) => BottomNavBar(),
          //   '/last'   : (context) => Module11Class1(),
          // },
        );
      },
    );
  }
}
