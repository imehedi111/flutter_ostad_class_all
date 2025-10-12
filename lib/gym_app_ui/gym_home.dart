import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapp4/assaignment_ui/home_page.dart';
import 'package:myapp4/gym_app_ui/workout_page.dart';
import 'package:myapp4/module_10/class_3_formfields_login.dart';
import 'package:myapp4/module_11/class_1.dart';
import 'package:myapp4/module_11/class_2.dart';
import 'package:myapp4/module_12/tabs_and_drawer.dart';
import 'package:myapp4/my_app_one/zoom_drawer.dart';

class GymHome extends StatefulWidget {

  GymHome({super.key});

  @override
  State<GymHome> createState() => _GymHomeState();
}

class _GymHomeState extends State<GymHome> {
  final GlobalKey<ScaffoldState> _myDrawerOpen = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _myDrawerOpen,
      drawer: Drawer(
        backgroundColor: Colors.black ,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    // backgroundImage: NetworkImage(
                    //   'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    // ),
                    backgroundImage: AssetImage('asset/logo1.png'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'CrossFit GYM',
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Tune your Body With Us',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
              title: Text('Home',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginForm(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
              title: Text('About Us',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AssignmentUi()),
                );
              },
            ),
            Divider(),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
              title: Text('Gallery',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Module12Class2()),
                );
              },
            ),
            Divider(),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
              title: Text('FAQ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Module11Class1()),
                );
              },
            ),
            Divider(),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
              title: Text('Contact Us',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Module11Stack(),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
      // drawer: ZoomDrawer(
      //   style: DrawerStyle.defaultStyle,
      //     borderRadius: 24.0,
      //     angle: -12.0,
      //     drawerShadowsBackgroundColor: Colors.grey.shade300,
      //     openCurve: Curves.fastOutSlowIn,
      //     closeCurve: Curves.bounceIn,
      //     controller: ZoomDrawerController(),
      //     mainScreen: GymHome(),
      //     menuScreen: ListView(
      //           children: [
      //             DrawerHeader(
      //               child: Column(
      //                 children: [
      //                   CircleAvatar(
      //                     radius: 40,
      //                     backgroundImage: NetworkImage(
      //                       'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      //                     ),
      //                   ),
      //                   SizedBox(height: 5),
      //                   Text(
      //                     'Md Mehedi Hasan',
      //                     style: TextStyle(fontSize: 16, color: Colors.white),
      //                   ),
      //                   Text(
      //                     'imehedi111@gmail.com',
      //                     style: TextStyle(
      //                       fontSize: 13,
      //                       color: Colors.grey,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             ListTile(
      //               dense: true,
      //               visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
      //               title: Text('Home',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => LoginForm(),
      //                   ),
      //                 );
      //               },
      //             ),
      //             Divider(),
      //             ListTile(
      //               dense: true,
      //               visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
      //               title: Text('About Us',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => AssignmentUi()),
      //                 );
      //               },
      //             ),
      //             Divider(),
      //             ListTile(
      //               dense: true,
      //               visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
      //               title: Text('Gallery',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => Module12Class2()),
      //                 );
      //               },
      //             ),
      //             Divider(),
      //             ListTile(
      //               dense: true,
      //               visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
      //               title: Text('FAQ',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => Module11Class1()),
      //                 );
      //               },
      //             ),
      //             Divider(),
      //             ListTile(
      //               dense: true,
      //               visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
      //               title: Text('Contact Us',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Module11Stack(),
      //                   ),
      //                 );
      //               },
      //             ),
      //             Divider(),
      //           ],
      //         ),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  foregroundDecoration: BoxDecoration(color: Colors.black54),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/hb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 60,
                  child: SizedBox(
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        // minimumSize: Size.fromHeight(50),
                        backgroundColor: Color.fromRGBO(41, 41, 43, 0.9),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.only(
                          top: 7,
                          bottom: 7,
                          left: 7,
                          right: 7,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                        _myDrawerOpen.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Color(0xFFf5ff41),
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BE HEALTHY',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'BE STRONGER',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'BE YOURSELF',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: Color(0xFFf5ff41),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WorkoutPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Join Now',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: Color.fromRGBO(
                                    41,
                                    41,
                                    43,
                                    0.9,
                                  ),
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WorkoutPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewWidget {}

class ContainerAllThings {}

class GridBuilderWidget {}
