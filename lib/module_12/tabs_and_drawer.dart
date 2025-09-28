import 'package:flutter/material.dart';
import 'package:myapp4/assaignment_ui/home_page.dart';
import 'package:myapp4/module_10/class_3.dart';
import 'package:myapp4/module_10/class_3_formfields_login.dart';
import 'package:myapp4/module_11/class_1.dart';
import 'package:myapp4/my_app_one/login_page.dart';

class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: 
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                    ),
                    SizedBox(height: 5,),
                    Text('Md Mehedi Hasan',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    Text('imehedi111@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLoginMyApp()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('About Us'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Class3()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Gallery'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AssignmentUi()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('FAQ'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Module11Class1()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Contact Us'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Module12Class2()));
                },
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child:
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                    ),
                    SizedBox(height: 5,),
                    Text('Md Mehedi Hasan',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    Text('imehedi111@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Home',
                  textAlign: TextAlign.end,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLoginMyApp()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('About Us',
                  textAlign: TextAlign.end,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Class3()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Gallery',
                  textAlign: TextAlign.end,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AssignmentUi()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('FAQ',
                  textAlign: TextAlign.end,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Module11Class1()));
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Contact Us',
                  textAlign: TextAlign.end,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Module12Class2()));
                },
              ),
              Divider(),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tabs and Drawer'),
          backgroundColor: Colors.teal,
          bottom: TabBar(
              // isScrollable: true,
            indicatorAnimation: TabIndicatorAnimation.elastic,
              indicatorColor: Colors.orange,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.all(10),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                color: Colors.yellow.shade100,
              ),
              tabs: [
            SizedBox(
              width: 200,
              child: Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
            ),
            SizedBox(
              width: 200,
              child: Tab(
                icon: Icon(Icons.favorite),
                text: 'Fav',
              ),
            ),
            SizedBox(
              width: 200,
              child: Tab(
                icon: Icon(Icons.settings),
                text: 'Setting',
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          // Container(
          //   height: 200,
          //   color: Colors.red,
          //   child: Center(
          //     child: Text('Home', style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.w600,
          //       color: Colors.white,
          //     ),),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.orange,
          //   child: Center(
          //     child: Text('Favorite', style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.w600,
          //       color: Colors.white,
          //     ),),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.blue,
          //   child: Center(
          //     child: Text('Setting', style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.w600,
          //       color: Colors.white,
          //     ),),
          //   ),
          // ),
          UserLoginMyApp(),
          AssignmentUi(),
          Module11Class1(),
        ]),
      ),
    );
  }
}
